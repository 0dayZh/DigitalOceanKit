//
//  DOImage.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DOImageType) {
    DOImageTypeUnknow,
    DOImageTypeSnapshot,
    DOImageTypeTemporary,
    DOImageTypeBackup
};

@interface DOImage : NSObject

@property (nonatomic, assign) NSUInteger imageId;
@property (nonatomic, strong) NSString  *name;
@property (nonatomic, assign) DOImageType   type;
@property (nonatomic, strong) NSString  *distribution;
@property (nonatomic, strong) NSString  *slug;
@property (nonatomic, assign, getter=isPublicImage) BOOL publicImage;
@property (nonatomic, strong) NSArray   *regions;
@property (nonatomic, assign) NSUInteger    minDiskSize;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
