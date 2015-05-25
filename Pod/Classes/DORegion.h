//
//  DORegion.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

@interface DORegion : NSObject

@property (nonatomic, strong) NSString  *slug;
@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSArray   *sizes;
@property (nonatomic, assign, getter=isAvailable) BOOL available;
@property (nonatomic, strong) NSArray   *features;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
