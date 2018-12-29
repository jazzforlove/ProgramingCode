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

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) Dog *dog;

@property (nonatomic, strong) NSMutableArray *arr;

@end

NS_ASSUME_NONNULL_END
