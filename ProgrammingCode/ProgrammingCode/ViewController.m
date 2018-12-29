//
//  ViewController.m
//  ProgrammingCode
//
//  Created by 李国卿 on 2018/12/29.
//  Copyright © 2018 guoqing.li. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Calculator+category.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic, strong) Person *person;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //初始化对象
    _person = [[Person alloc]init];
    /**
     KVO底层实现原理
     1.当某个对象第一次被观察时，系统就自动为该类创建一个派生类（子类）NSKVONOtifying_person
     2.重写原类被观察的属性的set方法
     3.将指向对象的isa指向派生类（子类）NSKVoNotifying_person
     */

    // kvo触发模式有两种：1自动 2手动
    // 手动监听设置需要在person类中将开关设置为NO
    
    [self observeContainer];
    
    
    
    
}
// 监听属性
- (void)observerAttribute{
    // 观察对象属性变化
    //    [_person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
        [_person addObserver:self forKeyPath:NSStringFromSelector(@selector(name)) options:NSKeyValueObservingOptionNew context:nil];
}
//监听对象-属性依赖
- (void)observerObject{
    
    [_person addObserver:self forKeyPath:@"dog" options:NSKeyValueObservingOptionNew context:nil];
}
//监听容器
- (void)observeContainer{
    [_person addObserver:self forKeyPath:NSStringFromSelector(@selector(arr)) options:NSKeyValueObservingOptionNew context:nil];
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    static int a;
    // 自动触发
//    _person.name = [NSString stringWithFormat:@"%d",a++];
    //手动出发
//    [_person willChangeValueForKey:@"name"];
//    _person.name = [NSString stringWithFormat:@"%d",a++];
//    [_person didChangeValueForKey:@"name"];
    
    //监听模型的所有属性
//    _person.dog.age = a ++;
//    _person.dog.level = a ++;
    NSMutableArray *temparr = [_person mutableArrayValueForKey:@"arr"];
    [temparr addObject:[NSString stringWithFormat:@"%d",a++]];
    
}
#pragma mark -- KVO代理

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
//    NSLog(@"change--%@,age--%d,level--%d",change,_person.dog.age,_person.dog.level);
    NSLog(@"chang--%@",change);
}

#pragma mark -- 链式编程思想
- (void)test1{
    NSInteger result = [Calculator makeCalculator:^(Calculator * _Nonnull maker) {
        maker.add(10).add(20);
        maker.division(5);
    }];
    NSLog(@"%zd",result);
}

- (void)dealloc{
    //移除观察者
    [self removeObserver:self forKeyPath:@"name"];
}


@end
