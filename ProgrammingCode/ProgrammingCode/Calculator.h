//
//  Calculator.h
//  编程模式
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import <Foundation/Foundation.h>




NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (nonatomic, assign) NSInteger result;
//加
- (Calculator *(^)(NSInteger num))add;
//减
- (Calculator *(^)(NSInteger num))reduce;
//乘
- (Calculator *(^)(NSInteger num))mutify;
//除
- (Calculator *(^)(NSInteger num))division;



@end

NS_ASSUME_NONNULL_END
