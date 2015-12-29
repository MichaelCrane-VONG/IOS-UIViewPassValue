//
//  ViewController.h
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (copy,nonatomic)NSString *firstStr;
-(void)btn1TouchDown:(UIButton *)sender;

@end

