//
//  Calculator+category.m
//  编程模式
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "Calculator+category.h"


@implementation Calculator (category)

+ (NSInteger)makeCalculator:(void (^)(Calculator *maker))block{
    //初始化对象
    Calculator *maker = [[Calculator alloc]init];
    //返回对象，处理逻辑
    block(maker);
    //返回结果
    return maker.result;
}

@end
