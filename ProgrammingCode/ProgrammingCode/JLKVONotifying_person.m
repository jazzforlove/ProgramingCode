//
//  JLKVONotifying_person.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "JLKVONotifying_person.h"
#import <objc/runtime.h>

@implementation JLKVONotifying_person

- (void)setAge:(int)age{
    [super setAge:age];
    // 获取观察者，发送通知
   id observer = objc_getAssociatedObject(self, @"observer");
    
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
}

@end
