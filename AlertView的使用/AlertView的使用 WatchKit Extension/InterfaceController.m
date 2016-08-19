//
//  InterfaceController.m
//  AlertView的使用 WatchKit Extension
//
//  Created by Anthony on 16/8/20.
//  Copyright © 2016年 SLZeng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (IBAction)showAlertView {
    
    WKAlertAction *doneAction = [WKAlertAction actionWithTitle:@"done" style:WKAlertActionStyleDefault handler:^{
        NSLog(@"done");
    }];
    
    WKAlertAction *destructiveAction = [WKAlertAction actionWithTitle:@"具有破坏性的" style:WKAlertActionStyleDestructive handler:^{
        NSLog(@"具有破坏性的");
    }];
    
    WKAlertAction *cancelAction = [WKAlertAction actionWithTitle:@"exit" style:WKAlertActionStyleCancel handler:^{
        NSLog(@"cancel");
    }];
    
    /**
     *  三种显示方式
     *  WKAlertControllerStyleAlert,
     *  WKAlertControllerStyleSideBySideButtonsAlert,
     *  WKAlertControllerStyleActionSheet,
     */
    
    // Action依次排序的
//    [self presentAlertControllerWithTitle:@"Demo" message:@"Action依次排序的" preferredStyle:WKAlertControllerStyleAlert actions:@[doneAction, destructiveAction, cancelAction]];
    
    // 只需要两个Action 一个Action就相当于一个按钮，否则报错
//    [self presentAlertControllerWithTitle:@"Demo" message:@"只需要两个Action 一个Action就相当于一个按钮，否则报错" preferredStyle:WKAlertControllerStyleSideBySideButtonsAlert actions:@[doneAction, cancelAction]];
    
    // 退出在左上角
    [self presentAlertControllerWithTitle:@"Demo" message:@"退出在左上角" preferredStyle:WKAlertControllerStyleActionSheet actions:@[doneAction, destructiveAction, cancelAction]];
}

@end



