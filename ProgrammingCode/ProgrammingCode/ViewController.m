//
//  ViewController.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Calculator+category.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSInteger result = [Calculator makeCalculator:^(Calculator * _Nonnull maker) {
        maker.add(10).add(20);
        maker.division(5);
    }];
    
    NSLog(@"%zd",result);
    
}


@end
