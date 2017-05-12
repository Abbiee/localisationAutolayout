//
//  Utilities.m
//  localisationAutolayout
//
//  Created by admin on 12/05/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities

+ (NSString *)langFromLocale:(NSString *)locale {
    NSRange r = [locale rangeOfString:@"_"];
    if (r.length == 0) r.location = locale.length;
    NSRange r2 = [locale rangeOfString:@"-"];
    if (r2.length == 0) r2.location = locale.length;
    return [[locale substringToIndex:MIN(r.location, r2.location)] lowercaseString];
}

@end
