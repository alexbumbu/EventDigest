// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Photos Library API (photoslibrary/v1)
// Description:
//   Manage photos, videos, and albums in Google Photos
// Documentation:
//   https://developers.google.com/photos/

#import "GTLRPhotosLibraryObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRPhotosLibrary_AlbumPosition.position
NSString * const kGTLRPhotosLibrary_AlbumPosition_Position_AfterEnrichmentItem = @"AFTER_ENRICHMENT_ITEM";
NSString * const kGTLRPhotosLibrary_AlbumPosition_Position_AfterMediaItem = @"AFTER_MEDIA_ITEM";
NSString * const kGTLRPhotosLibrary_AlbumPosition_Position_FirstInAlbum = @"FIRST_IN_ALBUM";
NSString * const kGTLRPhotosLibrary_AlbumPosition_Position_LastInAlbum = @"LAST_IN_ALBUM";
NSString * const kGTLRPhotosLibrary_AlbumPosition_Position_PositionTypeUnspecified = @"POSITION_TYPE_UNSPECIFIED";

// GTLRPhotosLibrary_ContentFilter.excludedContentCategories
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Animals = @"ANIMALS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Arts = @"ARTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Birthdays = @"BIRTHDAYS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Cityscapes = @"CITYSCAPES";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Crafts = @"CRAFTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Documents = @"DOCUMENTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Fashion = @"FASHION";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Flowers = @"FLOWERS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Food = @"FOOD";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Gardens = @"GARDENS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Holidays = @"HOLIDAYS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Houses = @"HOUSES";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Landmarks = @"LANDMARKS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Landscapes = @"LANDSCAPES";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Night = @"NIGHT";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_None = @"NONE";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_People = @"PEOPLE";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Performances = @"PERFORMANCES";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Pets = @"PETS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Receipts = @"RECEIPTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Screenshots = @"SCREENSHOTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Selfies = @"SELFIES";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Sport = @"SPORT";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Travel = @"TRAVEL";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Utility = @"UTILITY";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Weddings = @"WEDDINGS";
NSString * const kGTLRPhotosLibrary_ContentFilter_ExcludedContentCategories_Whiteboards = @"WHITEBOARDS";

// GTLRPhotosLibrary_ContentFilter.includedContentCategories
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Animals = @"ANIMALS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Arts = @"ARTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Birthdays = @"BIRTHDAYS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Cityscapes = @"CITYSCAPES";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Crafts = @"CRAFTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Documents = @"DOCUMENTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Fashion = @"FASHION";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Flowers = @"FLOWERS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Food = @"FOOD";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Gardens = @"GARDENS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Holidays = @"HOLIDAYS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Houses = @"HOUSES";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Landmarks = @"LANDMARKS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Landscapes = @"LANDSCAPES";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Night = @"NIGHT";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_None = @"NONE";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_People = @"PEOPLE";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Performances = @"PERFORMANCES";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Pets = @"PETS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Receipts = @"RECEIPTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Screenshots = @"SCREENSHOTS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Selfies = @"SELFIES";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Sport = @"SPORT";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Travel = @"TRAVEL";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Utility = @"UTILITY";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Weddings = @"WEDDINGS";
NSString * const kGTLRPhotosLibrary_ContentFilter_IncludedContentCategories_Whiteboards = @"WHITEBOARDS";

// GTLRPhotosLibrary_FeatureFilter.includedFeatures
NSString * const kGTLRPhotosLibrary_FeatureFilter_IncludedFeatures_Favorites = @"FAVORITES";
NSString * const kGTLRPhotosLibrary_FeatureFilter_IncludedFeatures_None = @"NONE";

// GTLRPhotosLibrary_MediaTypeFilter.mediaTypes
NSString * const kGTLRPhotosLibrary_MediaTypeFilter_MediaTypes_AllMedia = @"ALL_MEDIA";
NSString * const kGTLRPhotosLibrary_MediaTypeFilter_MediaTypes_Photo = @"PHOTO";
NSString * const kGTLRPhotosLibrary_MediaTypeFilter_MediaTypes_Video = @"VIDEO";

// GTLRPhotosLibrary_Video.status
NSString * const kGTLRPhotosLibrary_Video_Status_Failed      = @"FAILED";
NSString * const kGTLRPhotosLibrary_Video_Status_Processing  = @"PROCESSING";
NSString * const kGTLRPhotosLibrary_Video_Status_Ready       = @"READY";
NSString * const kGTLRPhotosLibrary_Video_Status_Unspecified = @"UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_AddEnrichmentToAlbumRequest
//

@implementation GTLRPhotosLibrary_AddEnrichmentToAlbumRequest
@dynamic albumPosition, newEnrichmentItem;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_AddEnrichmentToAlbumResponse
//

@implementation GTLRPhotosLibrary_AddEnrichmentToAlbumResponse
@dynamic enrichmentItem;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Album
//

@implementation GTLRPhotosLibrary_Album
@dynamic coverPhotoBaseUrl, coverPhotoMediaItemId, identifier, isWriteable,
         mediaItemsCount, productUrl, shareInfo, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_AlbumPosition
//

@implementation GTLRPhotosLibrary_AlbumPosition
@dynamic position, relativeEnrichmentItemId, relativeMediaItemId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchAddMediaItemsToAlbumRequest
//

@implementation GTLRPhotosLibrary_BatchAddMediaItemsToAlbumRequest
@dynamic mediaItemIds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaItemIds" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchAddMediaItemsToAlbumResponse
//

@implementation GTLRPhotosLibrary_BatchAddMediaItemsToAlbumResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchCreateMediaItemsRequest
//

@implementation GTLRPhotosLibrary_BatchCreateMediaItemsRequest
@dynamic albumId, albumPosition, newMediaItems;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"newMediaItems" : [GTLRPhotosLibrary_NewMediaItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchCreateMediaItemsResponse
//

@implementation GTLRPhotosLibrary_BatchCreateMediaItemsResponse
@dynamic newMediaItemResults;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"newMediaItemResults" : [GTLRPhotosLibrary_NewMediaItemResult class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchGetMediaItemsResponse
//

@implementation GTLRPhotosLibrary_BatchGetMediaItemsResponse
@dynamic mediaItemResults;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaItemResults" : [GTLRPhotosLibrary_MediaItemResult class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchRemoveMediaItemsFromAlbumRequest
//

@implementation GTLRPhotosLibrary_BatchRemoveMediaItemsFromAlbumRequest
@dynamic mediaItemIds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaItemIds" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_BatchRemoveMediaItemsFromAlbumResponse
//

@implementation GTLRPhotosLibrary_BatchRemoveMediaItemsFromAlbumResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ContentFilter
//

@implementation GTLRPhotosLibrary_ContentFilter
@dynamic excludedContentCategories, includedContentCategories;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"excludedContentCategories" : [NSString class],
    @"includedContentCategories" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ContributorInfo
//

@implementation GTLRPhotosLibrary_ContributorInfo
@dynamic displayName, profilePictureBaseUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_CreateAlbumRequest
//

@implementation GTLRPhotosLibrary_CreateAlbumRequest
@dynamic album;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Date
//

@implementation GTLRPhotosLibrary_Date
@dynamic day, month, year;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_DateFilter
//

@implementation GTLRPhotosLibrary_DateFilter
@dynamic dates, ranges;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dates" : [GTLRPhotosLibrary_Date class],
    @"ranges" : [GTLRPhotosLibrary_DateRange class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_DateRange
//

@implementation GTLRPhotosLibrary_DateRange
@dynamic endDate, startDate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_EnrichmentItem
//

@implementation GTLRPhotosLibrary_EnrichmentItem
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_FeatureFilter
//

@implementation GTLRPhotosLibrary_FeatureFilter
@dynamic includedFeatures;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"includedFeatures" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Filters
//

@implementation GTLRPhotosLibrary_Filters
@dynamic contentFilter, dateFilter, excludeNonAppCreatedData, featureFilter,
         includeArchivedMedia, mediaTypeFilter;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_JoinSharedAlbumRequest
//

@implementation GTLRPhotosLibrary_JoinSharedAlbumRequest
@dynamic shareToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_JoinSharedAlbumResponse
//

@implementation GTLRPhotosLibrary_JoinSharedAlbumResponse
@dynamic album;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_LatLng
//

@implementation GTLRPhotosLibrary_LatLng
@dynamic latitude, longitude;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_LeaveSharedAlbumRequest
//

@implementation GTLRPhotosLibrary_LeaveSharedAlbumRequest
@dynamic shareToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_LeaveSharedAlbumResponse
//

@implementation GTLRPhotosLibrary_LeaveSharedAlbumResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ListAlbumsResponse
//

@implementation GTLRPhotosLibrary_ListAlbumsResponse
@dynamic albums, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"albums" : [GTLRPhotosLibrary_Album class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"albums";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ListMediaItemsResponse
//

@implementation GTLRPhotosLibrary_ListMediaItemsResponse
@dynamic mediaItems, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaItems" : [GTLRPhotosLibrary_MediaItem class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"mediaItems";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ListSharedAlbumsResponse
//

@implementation GTLRPhotosLibrary_ListSharedAlbumsResponse
@dynamic nextPageToken, sharedAlbums;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"sharedAlbums" : [GTLRPhotosLibrary_Album class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"sharedAlbums";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Location
//

@implementation GTLRPhotosLibrary_Location
@dynamic latlng, locationName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_LocationEnrichment
//

@implementation GTLRPhotosLibrary_LocationEnrichment
@dynamic location;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_MapEnrichment
//

@implementation GTLRPhotosLibrary_MapEnrichment
@dynamic destination, origin;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_MediaItem
//

@implementation GTLRPhotosLibrary_MediaItem
@dynamic baseUrl, contributorInfo, descriptionProperty, filename, identifier,
         mediaMetadata, mimeType, productUrl;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_MediaItemResult
//

@implementation GTLRPhotosLibrary_MediaItemResult
@dynamic mediaItem, status;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_MediaMetadata
//

@implementation GTLRPhotosLibrary_MediaMetadata
@dynamic creationTime, height, photo, video, width;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_MediaTypeFilter
//

@implementation GTLRPhotosLibrary_MediaTypeFilter
@dynamic mediaTypes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaTypes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_NewEnrichmentItem
//

@implementation GTLRPhotosLibrary_NewEnrichmentItem
@dynamic locationEnrichment, mapEnrichment, textEnrichment;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_NewMediaItem
//

@implementation GTLRPhotosLibrary_NewMediaItem
@dynamic descriptionProperty, simpleMediaItem;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_NewMediaItemResult
//

@implementation GTLRPhotosLibrary_NewMediaItemResult
@dynamic mediaItem, status, uploadToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Photo
//

@implementation GTLRPhotosLibrary_Photo
@dynamic apertureFNumber, cameraMake, cameraModel, exposureTime, focalLength,
         isoEquivalent;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_SearchMediaItemsRequest
//

@implementation GTLRPhotosLibrary_SearchMediaItemsRequest
@dynamic albumId, filters, orderBy, pageSize, pageToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_SearchMediaItemsResponse
//

@implementation GTLRPhotosLibrary_SearchMediaItemsResponse
@dynamic mediaItems, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mediaItems" : [GTLRPhotosLibrary_MediaItem class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"mediaItems";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ShareAlbumRequest
//

@implementation GTLRPhotosLibrary_ShareAlbumRequest
@dynamic sharedAlbumOptions;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ShareAlbumResponse
//

@implementation GTLRPhotosLibrary_ShareAlbumResponse
@dynamic shareInfo;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_SharedAlbumOptions
//

@implementation GTLRPhotosLibrary_SharedAlbumOptions
@dynamic isCollaborative, isCommentable;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_ShareInfo
//

@implementation GTLRPhotosLibrary_ShareInfo
@dynamic isJoinable, isJoined, isOwned, shareableUrl, sharedAlbumOptions,
         shareToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_SimpleMediaItem
//

@implementation GTLRPhotosLibrary_SimpleMediaItem
@dynamic fileName, uploadToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Status
//

@implementation GTLRPhotosLibrary_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRPhotosLibrary_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Status_Details_Item
//

@implementation GTLRPhotosLibrary_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_TextEnrichment
//

@implementation GTLRPhotosLibrary_TextEnrichment
@dynamic text;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_UnshareAlbumRequest
//

@implementation GTLRPhotosLibrary_UnshareAlbumRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_UnshareAlbumResponse
//

@implementation GTLRPhotosLibrary_UnshareAlbumResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPhotosLibrary_Video
//

@implementation GTLRPhotosLibrary_Video
@dynamic cameraMake, cameraModel, fps, status;
@end
