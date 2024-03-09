// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Photos Library API (photoslibrary/v1)
// Description:
//   Manage photos, videos, and albums in Google Photos
// Documentation:
//   https://developers.google.com/photos/

#import "GTLRPhotosLibrary.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopePhotosLibrary                   = @"https://www.googleapis.com/auth/photoslibrary";
NSString * const kGTLRAuthScopePhotosLibraryAppendonly         = @"https://www.googleapis.com/auth/photoslibrary.appendonly";
NSString * const kGTLRAuthScopePhotosLibraryEditAppcreateddata = @"https://www.googleapis.com/auth/photoslibrary.edit.appcreateddata";
NSString * const kGTLRAuthScopePhotosLibraryReadonly           = @"https://www.googleapis.com/auth/photoslibrary.readonly";
NSString * const kGTLRAuthScopePhotosLibraryReadonlyAppcreateddata = @"https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata";
NSString * const kGTLRAuthScopePhotosLibrarySharing            = @"https://www.googleapis.com/auth/photoslibrary.sharing";

// ----------------------------------------------------------------------------
//   GTLRPhotosLibraryService
//

@implementation GTLRPhotosLibraryService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://photoslibrary.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
