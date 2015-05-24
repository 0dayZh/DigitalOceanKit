//
//  DOViewController.m
//  DigitalOceanKit
//
//  Created by 0dayZh on 05/24/2015.
//  Copyright (c) 2014 0dayZh. All rights reserved.
//

#import "DOViewController.h"
#import <DigitalOceanKit/DigitalOceanKit.h>

#define kToken  @""

@interface DOViewController ()

@end

@implementation DOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DOApiManager *client = [[DOApiManager alloc] initWithAccessToken:kToken];
    
    [client getUserInformationWithComplete:^(DOAccount *account, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            NSLog(@"Got Account: %@", account);
        }
    }];
}

@end
