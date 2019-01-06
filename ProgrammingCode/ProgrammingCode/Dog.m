//
//  Dog.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "Dog.h"
#import "Dog+category.h"
#import "Dog+extension.h"

@implementation Dog

- (instancetype)init{
    self = [super init];
    if (self) {
        [self eat];
        
    }
    return self;
}


//- (void)eat{
//    NSLog(@"吃东西了");
//}

@end
