//
//  DORegion.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DORegion.h"

@implementation DORegion

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.slug = json[@"slug"];
        self.name = json[@"name"];
        self.sizes = json[@"sizes"];
        self.available = [json[@"available"] boolValue];
        self.features = json[@"features"];
    }
    
    return self;
}

@end
