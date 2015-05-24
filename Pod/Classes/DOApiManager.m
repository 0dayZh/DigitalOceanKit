//
//  DOApiManager.m
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOApiManager.h"
#import <AFNetworking/AFNetworking.h>

#define kDOApiURI   @"https://api.digitalocean.com"

@interface DOApiManager ()

@property (nonatomic, strong) AFHTTPSessionManager  *httpSessionManager;

@end

@implementation DOApiManager

- (instancetype)initWithAccessToken:(NSString *)accessToken {
    self = [super init];
    if (self) {
        self.accessToken = accessToken;
        
        self.httpSessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:kDOApiURI]
                                                           sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        [self.httpSessionManager.requestSerializer setValue:[NSString stringWithFormat:@"Bearer %@", accessToken] forHTTPHeaderField:@"Authorization"];
    }
    
    return self;
}

- (NSString *)apiVersion {
    return @"v2";
}

- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure {
    return [self.httpSessionManager GET:URLString
                             parameters:parameters
                                success:success
                                failure:failure];
}

- (NSURLSessionDataTask *)HEAD:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure {
    return [self.httpSessionManager HEAD:URLString
                             parameters:parameters
                                success:success
                                failure:failure];

}

- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure {
    return [self.httpSessionManager POST:URLString
                             parameters:parameters
                                success:success
                                failure:failure];

}

- (NSURLSessionDataTask *)PUT:(NSString *)URLString
                   parameters:(id)parameters
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure {
    return [self.httpSessionManager PUT:URLString
                             parameters:parameters
                                success:success
                                failure:failure];
}

- (NSURLSessionDataTask *)DELETE:(NSString *)URLString
                      parameters:(id)parameters
                         success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                         failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure {
    return [self.httpSessionManager DELETE:URLString
                             parameters:parameters
                                success:success
                                failure:failure];
}

@end
