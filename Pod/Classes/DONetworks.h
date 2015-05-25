//
//  DONetworks.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DONetworkType) {
    DONetworkTypeUnknow,
    DONetworkTypePublic,
    DONetworkTypePrivate
};

@interface DONetwork : NSObject

@property (nonatomic, strong) NSString  *ipAddress;
@property (nonatomic, strong) NSString  *netmask;
@property (nonatomic, strong) NSString  *gateway;
@property (nonatomic, assign) DONetworkType  type;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end

@interface DONetworks : NSObject

@property (nonatomic, strong) NSMutableArray *ipv4Networks;
@property (nonatomic, strong) NSMutableArray *ipv6Networks;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
