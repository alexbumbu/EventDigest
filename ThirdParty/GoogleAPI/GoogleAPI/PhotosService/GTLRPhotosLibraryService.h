// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Photos Library API (photoslibrary/v1)
// Description:
//   Manage photos, videos, and albums in Google Photos
// Documentation:
//   https://developers.google.com/photos/

#if __has_include(<GoogleAPIClientForREST/GTLRService.h>) || GTLR_BUILT_AS_FRAMEWORK
  #import <GoogleAPIClientForREST/GTLRService.h>
#elif SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#else
  #import "GTLRService.h"
#endif



#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: See, upload, and organize items in your Google Photos
 *  library
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibrary;
/**
 *  Authorization scope: Add to your Google Photos library
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary.appendonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibraryAppendonly;
/**
 *  Authorization scope: Edit the info in your photos, videos, and albums
 *  created within this app, including titles, descriptions, and covers
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary.edit.appcreateddata"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibraryEditAppcreateddata;
/**
 *  Authorization scope: View your Google Photos library
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibraryReadonly;
/**
 *  Authorization scope: Manage photos added by this app
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibraryReadonlyAppcreateddata;
/**
 *  Authorization scope: Manage and add to shared albums on your behalf
 *
 *  Value "https://www.googleapis.com/auth/photoslibrary.sharing"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopePhotosLibrarySharing;

// ----------------------------------------------------------------------------
//   GTLRPhotosLibraryService
//

/**
 *  Service for executing Photos Library API queries.
 *
 *  Manage photos, videos, and albums in Google Photos
 */
@interface GTLRPhotosLibraryService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRPhotosLibraryQuery.h. The query can the be sent with GTLRService's
// execute methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
