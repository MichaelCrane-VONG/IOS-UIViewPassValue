//
//  SecondViewController.h
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
@interface SecondViewController : UIViewController
@property (copy,nonatomic)NSString *secondStr;
@property (strong,nonatomic)id<PassValueDelegate>delegate;
-(void)btn2TouchDown:(UIButton *)sender;
-(void)btn4TouchDown:(UIButton *)sender;
@end
