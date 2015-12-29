//
//  ThirdViewController.m
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import "ThirdViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@implementation ThirdViewController
{
    UITextField *textField3;
    UIButton *btn3,*btnBackToFirst;
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor orangeColor];
    textField3=[[UITextField alloc]initWithFrame:CGRectMake(27, 40, self.view.frame.size.width-27*2, 40)];
    textField3.borderStyle=UITextBorderStyleRoundedRect;
    textField3.placeholder=@"please input the word";
    [self.view addSubview:textField3];
    
    btn3=[UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame=CGRectMake(27, 200, self.view.frame.size.width, 40);
    [btn3 setTitle:@"回到上一个视图" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btn3TouchDown:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn3];
    
    btnBackToFirst=[UIButton buttonWithType:UIButtonTypeSystem];
    btnBackToFirst.frame=CGRectMake(27, 400, self.view.frame.size.width, 40);
    [btnBackToFirst setTitle:@"回到第一个视图" forState:UIControlStateNormal];
    [btnBackToFirst addTarget:self action:@selector(btnBackToFirst:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnBackToFirst];
}

-(void)btn3TouchDown:(UIButton *)sender
{
    SecondViewController *secondView=[[SecondViewController alloc]init];
    secondView.secondStr=textField3.text;
    [self presentViewController:secondView animated:YES completion:nil];
}

-(void)btnBackToFirst:(UIButton *)sender
{
    FirstViewController *firstView=[[FirstViewController alloc]init];
    [firstView setPassArg:textField3.text];
     [self presentViewController:firstView animated:YES completion:nil];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [textField3 resignFirstResponder];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    textField3.text=self.thirdStr;
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
