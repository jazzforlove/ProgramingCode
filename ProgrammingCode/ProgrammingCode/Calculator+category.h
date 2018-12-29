//
//  Calculator+category.h
//  编程模式
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "Calculator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Calculator (category)

+ (NSInteger)makeCalculator:(void (^)(Calculator *maker))block;

@end

NS_ASSUME_NONNULL_END
