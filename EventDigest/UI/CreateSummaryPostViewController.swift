//
//  CreateSummaryPostViewController.swift
//  EventDigest
//
//  Created by Alex Bumbu on 16.02.2023.
//

import UIKit
import OSLog

private enum Segue: String {
    case pushLoginSegue
}

extension Segue: SegueNavigation {
    var identifier: String { rawValue }
}

class CreateSummaryPostViewController: UITableViewController, SettingsViewControllerDelegate {
    var didUpdateActiveCalendar: (() -> Void)?
    
    @IBOutlet private weak var startTimeDatePicker: UIDatePicker!
    @IBOutlet private weak var endTimeDatePicker: UIDatePicker!
    @IBOutlet private weak var publishedSwitch: UISwitch!
    @IBOutlet private weak var scheduledDatePicker: UIDatePicker!
    @IBOutlet private weak var summaryTextView: UITextView!
    @IBOutlet private weak var postButton: UIBarButtonItem!
        
    private var routesNavigator = UIRoutesNavigator.shared
    
    private var post: SummaryPost
    
    private var publishNow: Bool { publishedSwitch.isOn }
    private var scheduledDate: Date { scheduledDatePicker.date }
    
    private var calendarServiceType: CalendarService.Type {
        switch Session.current?.activeCalendar.type {
        case .google:
            return GoogleCalendarService.self
        case .facebook:
            return FacebookCalendarService.self
        case .none:
            fatalError()
        }
    }
    
    private lazy var startTimeRange: Date = {
        let now = Date()
                
        // Thursday 12 PM - today or next Thursday
        if now.isThursday() {
            return Foundation.Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: now)!
        } else {
            return Foundation.Calendar.current.nextThursday(hour: 12, minute: 0, after: now)!
        }
    }()
    private lazy var endTimeRange: Date = {
        return Foundation.Calendar.current.nextWednesday(hour: 23, minute: 59, after: startTimeRange)!
    }()

    required init?(coder: NSCoder) {
        self.post = SummaryPost()
        
        super.init(coder: coder)
    }
    
    deinit {
        routesNavigator.unregisterObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        routesNavigator.registerObserver(self)
        
        setupDelegate()
        setupUI()
        Task {
            await getEvents(serviceType: calendarServiceType)
            reloadUI()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)

        super.viewWillAppear(animated)
    }
}

extension CreateSummaryPostViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == IndexPath(row: 0, section: 2) {
            return UITableView.automaticDimension
        }
        
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 && publishedSwitch.isOn {
            return 1
        }
        
        return super.tableView(tableView, numberOfRowsInSection: section)
    }
}

extension CreateSummaryPostViewController: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        postButton.isEnabled = !summaryTextView.text.isEmpty
    }
}

extension CreateSummaryPostViewController: UIRoutingProtocol {
    
    func handleRoute(_ route: String) {
        let route = UIRoute(rawValue: route)
        switch route {
        case .loginScreen:
            Segue.pushLoginSegue.perform(in: self, sender: nil)
        default:
            break
        }
    }
}

private extension CreateSummaryPostViewController {
    
    @IBSegueAction private func showSettings(coder: NSCoder, sender: Any?, segueIdentifier: String) -> SettingsViewController? {
        SettingsViewController(coder: coder, delegate: self)
    }
    
    @IBAction func startTimeDatePickerValueChanged(_ sender: UIDatePicker) {
        startTimeRange = sender.date
        
        showSpinner()
        Task {
            await getEvents(serviceType: calendarServiceType)
            
            hideSpinner()
            reloadUI()
        }
    }
    
    @IBAction func endTimeDatePickerValueChanged(_ sender: UIDatePicker) {
        endTimeRange = sender.date
        
        showSpinner()
        Task {
            await getEvents(serviceType: calendarServiceType)
            
            hideSpinner()
            reloadUI()
        }
    }
    
    @IBAction func publishedSwitchValueChanged(_ sender: UISwitch) {        
        tableView.reloadData()
    }
    
    @IBAction func postAction() {
        Task {
            if await facebookLogIn(), let page = await selectFacebookPage() {
                postSummary(pageId: page.id)
            }
        }
    }
}

@MainActor
private extension CreateSummaryPostViewController {
    
    func setupUI() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        
        startTimeDatePicker.date = startTimeRange
        endTimeDatePicker.date = endTimeRange
        publishedSwitch.isOn = false
        // scheduledDate must be at least 10 min from now
        scheduledDatePicker.minimumDate = Date(timeIntervalSinceNow: 15*60)
        scheduledDatePicker.date = Date(timeIntervalSinceNow: 60*60)
        summaryTextView.text = post.summary()
    }
    
    func reloadUI() {
        summaryTextView.text = post.summary()
        postButton.isEnabled = !summaryTextView.text.isEmpty
        tableView.reloadData()
    }
    
    func getPublishConfirmation() async -> Bool {
        await withCheckedContinuation({ (continuation: CheckedContinuation<Bool, Never>) in
            let confirmationAlert = UIAlertController(title: "", message: "Are you sure you want to publish the post? It will make it publicly available right away.", preferredStyle: .alert)
            confirmationAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
                continuation.resume(returning: false)
            })
            confirmationAlert.addAction(UIAlertAction(title: "Publish", style: .default) { _ in
                continuation.resume(returning: true)
            })
            
            present(confirmationAlert, animated: true)
        })
    }
    
    func selectFacebookPage() async -> Page? {
        if let page = Session.current?.activeCalendar, page.type == .facebook  {
            return page
        }
        
        // TODO: show spinner - MBProgressHUD
        guard let pages = await FacebookCalendarService.getPages() else {
            return nil
        }
        
        let page = await withCheckedContinuation({ (continuation: CheckedContinuation<Page?, Never>) in
            let alert = UIAlertController(title: "Select page", message: "", preferredStyle: .actionSheet)

            pages.forEach { page in
                alert.addAction(UIAlertAction(title: page.name, style: .default) { _ in
                    continuation.resume(returning: page)
                })
            }
            alert.addAction(UIAlertAction(title: "Logout", style: .destructive) { [weak self] _ in
                self?.facebookLogOut()
                continuation.resume(returning: nil)
            })
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
                continuation.resume(returning: nil)
            })
            
            present(alert, animated: true)
        })
        
        return page
    }
}

private extension CreateSummaryPostViewController {
    
    func setupDelegate() {
        didUpdateActiveCalendar = { [weak self] in
            self?.showSpinner()
            Task {
                await self?.getEvents(serviceType: self!.calendarServiceType)
                
                self?.hideSpinner()
                self?.reloadUI()
            }
        }
    }
}

private extension CreateSummaryPostViewController {
    
    func facebookLogIn() async -> Bool {
        guard !FacebookLoginService.isLoggedIn else {
            return true
        }
        
        return await FacebookLoginService.logIn(from: self, permissions: FacebookCalendarService.permissions)
    }
    
    func facebookLogOut() {
        FacebookLoginService.logOut()
    }
    
    func getEvents<T>(serviceType: T.Type) async where T: CalendarService {
        guard let calendarId = Session.current?.activeCalendar.id else {
            return
        }
        
        let events = await T.getEvents(calendarId: calendarId, since: startTimeRange, until: endTimeRange)
        post.events = events
    }
    
    func postSummary(pageId: String) {
        guard
            let summary = summaryTextView.text
        else {
            return
        }
        
        let date = scheduledDate
        let postSummary: (SummaryPost) -> Void = { [weak self] post in
            Task {
                var success: Bool
                if post.imageURL != nil {
                    success = await FacebookCalendarService.postSummaryPhoto(pageId: pageId,
                                                                             photoURL: post.imageURL!.absoluteString,
                                                                             summary: summary,
                                                                             scheduledDate: date)
                } else {
                    success = await FacebookCalendarService.postSummaryText(pageId: pageId,
                                                                            summary: summary,
                                                                            scheduledDate: date)
                }
                
                if success {
                    self?.showInfoAlert(title: "Success", message: "Summary posted successfully")
                } else {
                    self?.showInfoAlert(title: "Error", message: "Posting the summary failure")
                }
            }
        }
        
//        post.imageURL = URL(string: "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg")!
                
//        if publishNow {
//            Task {
//                if await getPublishConfirmation() {
//                    postSummary(post)
//                }
//            }
//        } else {
            postSummary(post)
//        }
    }
}


// MARK: -

private extension Foundation.Calendar {
    
    func nextThursday(hour: Int, minute: Int, after date: Date) -> Date?  {
        return Foundation.Calendar.current.nextDate(after: date,
                                         matching: DateComponents(hour: hour, minute: minute, weekday: 5),
                                         matchingPolicy: .previousTimePreservingSmallerComponents)
    }
    
    func nextWednesday(hour: Int, minute: Int, after date: Date) -> Date?  {
        return Foundation.Calendar.current.nextDate(after: date,
                                         matching: DateComponents(hour: hour, minute: minute, weekday: 4),
                                         matchingPolicy: .previousTimePreservingSmallerComponents)
    }
}

private extension Date {
    
    func isThursday(calendar: Foundation.Calendar = .current) -> Bool {
        calendar.component(.weekday, from: self) == 5
    }
}
