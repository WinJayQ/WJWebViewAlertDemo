//
//  ViewController.h
//  WebViewAlertDemo
//
//  Created by jh navi on 15/12/10.
//  Copyright © 2015年 WinJayQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

- (void)loadWebPageWithString:(NSString*)urlString WithWeb:(UIWebView *)webView;

@end

