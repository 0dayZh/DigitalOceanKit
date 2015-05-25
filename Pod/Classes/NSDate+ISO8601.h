//
//  NSDate+ISO8601.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (ISO8601)

+ (NSDate *)dateWithISO8601String:(NSString *)string;

@end
