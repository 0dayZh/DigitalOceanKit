//
//  DOKernel.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

@interface DOKernel : NSObject

@property (nonatomic, assign) NSUInteger kernelId;
@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSString  *version;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
