//
//  Person.h
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    int _age;//成员变量，只能自身访问，外部无法访问
}
// 属性，外界可以调用，内存空间并不在当前类中，只是当前类有访问属性的指针
@property (nonatomic, assign) int age;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) Dog *dog;

@property (nonatomic, strong) NSMutableArray *arr;



@end

NS_ASSUME_NONNULL_END
