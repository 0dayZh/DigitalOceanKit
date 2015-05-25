//
//  NSDate+ISO8601.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "NSDate+ISO8601.h"

@implementation NSDate (ISO8601)

static NSDateFormatter *s_formatter;
+ (NSDateFormatter *)ISO8601DateFormatter {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        NSLocale *enUSPOSIXLocale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
        [dateFormatter setLocale:enUSPOSIXLocale];
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
        s_formatter = dateFormatter;
    });
}

+ (NSDate *)dateWithISO8601String:(NSString *)string {
    return [[self ISO8601DateFormatter] dateFromString:string];
}

@end
