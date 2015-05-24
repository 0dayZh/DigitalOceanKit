//
//  DOAccount.m
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOAccount.h"

@implementation DOAccount

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.dropletLimit = [json[@"droplet_limit"] integerValue];
        self.email = json[@"email"];
        self.uuid = json[@"uuid"];
        self.emailVerified = [json[@"email_verified"] boolValue];
    }
    
    return self;
}

@end
