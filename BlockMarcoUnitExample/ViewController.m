//
//  ViewController.m
//  BlockMarcoUnitExample
//
//  Created by xiaoyu on 2018/2/5.
//  Copyright © 2018年 xiaoyu. All rights reserved.
//

#import "ViewController.h"

#import "BlockMarco.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //origin type
    __weak __typeof__(self) weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        __strong __typeof(self) strongSelf = weakSelf;
        
        [strongSelf doSomething];
        [strongSelf doOtherThing];
    });
    
    //easy type
    @weakify(self)
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @strongify(self)
        
        [self doSomething];
        [self doOtherThing];
    });
    

}

- (void)doSomething{
    NSLog(@"doSomething");
}

- (void)doOtherThing{
    NSLog(@"doOtherThing");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
