//
//  DOSize.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

@interface DOSize : NSObject

@property (nonatomic, strong) NSString  *slug;
@property (nonatomic, assign, getter=isAvailable) BOOL available;
@property (nonatomic, assign) double transfer;  // in TB
@property (nonatomic, assign) double priceMonthly;  // in US dollars
@property (nonatomic, assign) double priceHourly;   // in US dollars
@property (nonatomic, assign) NSUInteger memory;    // in MB
@property (nonatomic, assign) NSUInteger numberOfVitualCPUs;
@property (nonatomic, assign) NSUInteger sizeOfDisk;    // in GB
@property (nonatomic, strong) NSArray   *regions;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
