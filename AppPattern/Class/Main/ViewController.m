//
//  ViewController.m
//  AppPattern
//
//  Created by admin on 2017/9/20.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "ViewController.h"
#import "HomeHeadView.h"
#import "Masonry.h"
#import "YuJInBaoView.h"
#import "HomeCirclueView.h"
#import "FoundationView.h"
#import "HomeViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<UIWebViewDelegate>{
    HomeHeadView *headView;
    UIButton *imageView;
    FoundationView *yuJinBaoView;
    HomeCirclueView *circlueView;
    UIWebView *webView;
    JSValue *value;
}
@property (nonatomic) JSContext *jsContext;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
//    headView = [[HomeHeadView alloc]init];
//    headView.leftTitle = @"钰金宝";
//    headView.subtitle = @"在线交易";
//    headView.rightImage = @"arrow";
//    [self.view addSubview:headView];
    
    circlueView = [[HomeCirclueView alloc]init];
    circlueView.tilte = @"房地产";
    circlueView.subTilte = @"单位净值";
    circlueView.content = @"03-13";
    yuJinBaoView = [[FoundationView alloc]init];
    [self.view addSubview:circlueView];
    
    yuJinBaoView.title = @"你以为看似平静的2017年 不会有“雷”？你以为看似平静的2017年 不会有“雷你以为看似平静的2017年 不会有“雷你以为看似平静的2017年 不会有“雷你以为看似平静的2017年 不会有“雷？";
    yuJinBaoView.content = @"16年的开局就是战火连天，17年的开局就是满是红包行情，但也许风险正在逼近...";
    yuJinBaoView.additionalInfo = @"2017-03-13 09:45";
//    yuJinBaoView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:yuJinBaoView];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    [self setupWebView];
}
- (void)setupWebView{
    webView = [[UIWebView alloc]init];
    webView.backgroundColor = [UIColor grayColor];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"currentFile" withExtension:@"html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    webView.delegate = self;
    [self.view addSubview:webView];
}
- (void)viewWillLayoutSubviews{
    
    [circlueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(60);
        make.left.equalTo(self.view).offset(12);
        make.width.equalTo(@95);
        make.height.equalTo(@95);
    }];
    
    [yuJinBaoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(60);
        make.left.equalTo(circlueView.mas_right).offset(12);
        make.right.equalTo(self.view);
        make.height.greaterThanOrEqualTo(@100);
    }];
    [webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(yuJinBaoView.mas_bottom);
        make.left.bottom.right.equalTo(self.view);
    }];
}

- (void)btnClick{
    HomeViewController *autoHeight = [HomeViewController new];
    [self.navigationController pushViewController:autoHeight animated:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    JSVirtualMachine *vm = [[JSVirtualMachine alloc]init];
    JSContext *context1 = [[JSContext alloc]initWithVirtualMachine:vm];
//    JSValue *value = [context1 evaluateScript:@"var a = 1 + 2 + 3"];
//    NSLog(@"%@",[context1.globalObject objectForKeyedSubscript:@"a"]);
    context1[@"makeNSColor"] = ^(NSDictionary *rgb){
        float r = [rgb[@"red"] floatValue];
        float g = [rgb[@"green"] floatValue];
        float b = [rgb[@"blue"] floatValue];
        return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0f];
    };
    
    return;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


