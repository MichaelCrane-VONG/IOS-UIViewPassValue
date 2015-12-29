//
//  ThirdViewController.h
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
@interface ThirdViewController : UIViewController
@property(copy,nonatomic)NSString *thirdStr;
@property(strong,nonatomic)id<PassValueDelegate>delegate;
-(void)btn3TouchDown:(UIButton *)sender;
-(void)btnBackToFirst:(UIButton *)sender;
@end
