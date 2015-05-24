//
//  DOAccount.h
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import <Foundation/Foundation.h>

@interface DOAccount : NSObject

@property (nonatomic, assign) NSInteger dropletLimit;
@property (nonatomic, strong) NSString  *email;
@property (nonatomic, strong) NSString  *uuid;
@property (nonatomic, assign, getter=isEmailVerified) BOOL      emailVerified;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
