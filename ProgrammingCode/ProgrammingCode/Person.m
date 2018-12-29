//
//  Person.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "Person.h"


@implementation Person

- (instancetype)init{
    if (self = [super init]) {
//        _dog = [[Dog alloc]init];
        _arr = NSMutableArray.array;
    }
    return self;
}


//- (Dog *)dog{
//    if (!_dog) {
//        _dog = [[Dog alloc]init];
//    }
//    return _dog;
//}
//- (void)setName:(NSString *)name{
//    _name = name;
//    NSLog(@"进来了");
//}

// 默认为YES 自动 NO为手动模式
//+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key{
//    // 需要开启手动监听的属性
//    if ([key isEqualToString:@"name"]) {
//        return NO;
//    }
//    return YES;
//}
//
//+ (NSSet<NSString *> *)keyPathsForValuesAffectingValueForKey:(NSString *)key{
//    NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
//    if ([key isEqualToString:@"dog"] ) {
//        //创建依赖关系
//        keyPaths =  [[NSSet alloc]initWithObjects:@"_dog.name",@"_dog.level", nil];
//    }
//    return keyPaths;
//}



@end
