//
//  DOSize.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DOSize.h"

@implementation DOSize

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.slug = json[@"slug"];
        self.available = [json[@"available"] boolValue];
        self.transfer = [json[@"transfer"] doubleValue];
        self.priceMonthly = [json[@"price_monthly"] doubleValue];
        self.priceHourly = [json[@"price_hourly"] doubleValue];
        self.memory = [json[@"memory"] unsignedIntegerValue];
        self.numberOfVitualCPUs = [json[@"vcpus"] unsignedIntegerValue];
        self.sizeOfDisk = [json[@"disk"] unsignedIntegerValue];
        self.regions = json[@"regions"];
    }
    
    return self;
}

@end
