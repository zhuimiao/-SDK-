//
//  ViewController.m
//  微信分享
//
//  Created by 141319 on 15/11/2.
//  Copyright © 2015年 com.mob.demoShareSDK. All rights reserved.
//

#import "ViewController.h"
#import "WXApi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)shareToPengYouQuan:(UIButton *)sender {
    SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
    req.text = @"文本内容";
    req.bText = YES;
    req.scene = WXSceneTimeline;
    [WXApi sendReq:req];
}
- (IBAction)shareAction:(UIButton *)sender {
        SendMessageToWXReq* req = [[SendMessageToWXReq alloc] init];
        req.text = @"文本内容";
        req.bText = YES;
        req.scene = WXSceneSession;

        [WXApi sendReq:req];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
