//
//  UIViewController+HomeViewController.m
//  Instagram
//
//  Created by Johny Babylon on 8/26/16.
//  Copyright © 2016 Johny Babylon. All rights reserved.
//

#import "HomeViewController.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>



@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        [self performSegueWithIdentifier:@"facebook_login" sender:self];
        
    }
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
         
         if (!error) {
             NSLog(@"fetched user:%@  and Email : %@", result,result[@"email"]);
         }
     }];
    



    
}




@end
