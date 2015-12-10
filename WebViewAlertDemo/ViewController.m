//
//  ViewController.m
//  WebViewAlertDemo
//
//  Created by jh navi on 15/12/10.
//  Copyright © 2015年 WinJayQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadWebPageWithString:@"http://192.168.1.182:1001/poi/search?key=1215462740b38f6f75486eebbbcd8097" WithWeb:self.myWebView];
}

- (void)loadWebPageWithString:(NSString*)urlString WithWeb:(UIWebView *)webView;
{
    NSURL *url =[NSURL URLWithString:urlString];
    NSLog(@"%@",urlString);
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

#pragma UIWebViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"didFailLoadWithError:%@", error);
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSString *url = [request.URL absoluteString];
    NSLog(@"%@",url);
    return YES;
}


@end
