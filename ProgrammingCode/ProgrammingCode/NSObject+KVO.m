//
//  NSObject+KVO.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "NSObject+KVO.h"
#import "JLKVONotifying_person.h"
#import <objc/runtime.h>

@implementation NSObject (KVO)

- (void)jl_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context{
    
    // 修改isa指针执行Person子类NSKVONotifying_person, self是调用者
    object_setClass(self, [JLKVONotifying_person class]);
    
    //关联属性
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    
}

@end
