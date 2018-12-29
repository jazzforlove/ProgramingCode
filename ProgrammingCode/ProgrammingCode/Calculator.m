//
//  Calculator.m
//  编程模式
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (Calculator *(^)(NSInteger num))add{
    return ^(NSInteger num){
        self->_result += num;
        return self;
    };
}
- (Calculator *(^)(NSInteger num))reduce{
    return ^(NSInteger num){
        self->_result -= num;
        return self;
    };
}

- (Calculator *(^)(NSInteger num))mutify{
    return ^(NSInteger num){
        self->_result *= num;
        return self;
    };
}
- (Calculator *(^)(NSInteger num))division{
    return ^(NSInteger num){
        self->_result /= num;
        return self;
    };
}

@end
