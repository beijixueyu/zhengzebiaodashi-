//
//  ViewController.m
//  正则表达式
//
//  Created by dc008 on 16/9/14.
//  Copyright © 2016年 cxy. All rights reserved.
//

#import "ViewController.h"


//正则表达式就是对字符串操作的一种逻辑公式：1.通过编写正则表达式可以检测给定的字符串是否符合我们给定的逻辑；2.也可以从字符串中获取我们想要的特定部分
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *phonrNumber = @"13789455556";
//    //定义规则（正则表达式）
//    NSString *regex =@"^1[3|4|5|7|8|9][0-9]{9}$";
    //座机
//    NSString *phonrNumber = @"110";
//    NSString *regex = @"^(0\\d{2,3}-\\d{7,8})|110|119|120$";
    //身份证号(18位，最后一位可以是xX)
   // NSString *indentifyID = @"61221119921012332X";
   // NSString *regex =@"^[1-9][0-9]{5}[1|2]9[0-9]{2}[0|1]$";
//    NSString *email = @"15191891861@163.com";
//    NSString *regex = @"^[0-9a-zA-Z._%+-]+@[0-9a-zA-Z.-]{2,4}.[a-zA-Z]{2,3}$";
    NSString * email =@"技术回答撒";
    NSString *regex = @"^*.[\u4e00-\u9fa5].*$";
    //谓词
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    //判断
    NSLog(@"%d",[predicate evaluateWithObject:email]);//返回值为BOOL类型
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
