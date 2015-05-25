//
//  DOKernel.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DOKernel.h"

@implementation DOKernel

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.kernelId = [json[@"id"] unsignedIntegerValue];
        self.name = json[@"name"];
        self.version = json[@"version"];
    }
    
    return self;
}

@end
