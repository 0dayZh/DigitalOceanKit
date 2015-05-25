//
//  DODroplet.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DODropletStatus) {
    DODropletStatusUnknow,
    DODropletStatusNew,
    DODropletStatusActive,
    DODropletStatusOff,
    DODropletStatusArchive
};

@class DORegion, DOImage, DOSize, DONetworks, DOKernel;
@interface DODroplet : NSObject

@property (nonatomic, assign) NSUInteger dropletId;
@property (nonatomic, strong) NSString  *name;
@property (nonatomic, assign) NSUInteger memory;    // in MB
@property (nonatomic, assign) NSUInteger numberOfVirtualCPUs;
@property (nonatomic, assign) NSUInteger    sizeOfDisk; // in GB
@property (nonatomic, assign, getter=isLocked) BOOL locked;
@property (nonatomic, strong) NSDate *createdTime;
@property (nonatomic, assign) DODropletStatus   status;
@property (nonatomic, strong) NSArray   *backupIds;
@property (nonatomic, strong) NSArray   *snapshotIds;
@property (nonatomic, strong) NSArray   *features;
@property (nonatomic, strong) NSString  *sizeSlug;
@property (nonatomic, strong) DORegion  *region;
@property (nonatomic, strong) DOImage   *image;
@property (nonatomic, strong) DOSize    *size;
@property (nonatomic, strong) DONetworks    *networks;
@property (nonatomic, strong) DOKernel  *kernel;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
