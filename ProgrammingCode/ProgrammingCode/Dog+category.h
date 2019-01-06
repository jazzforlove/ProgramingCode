//
//  Dog+category.h
//  ProgrammingCode
//
//  Created by 李国卿 on 2019/1/4.
//  Copyright © 2019 guoqing.li. All rights reserved.
//

#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dog (category)

@property (nonatomic, copy) NSString *sleep;

- (void)eat;


@end

NS_ASSUME_NONNULL_END
