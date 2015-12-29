//
//  SecondViewController.m
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "ThirdViewController.h"
@implementation SecondViewController
{
    UITextField *textField2;
    UIButton *btn2,*btn4;
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    textField2=[[UITextField alloc]initWithFrame:CGRectMake(27, 40, self.view.frame.size.width-27*2, 40)];
    textField2.borderStyle=UITextBorderStyleRoundedRect;
    textField2.placeholder=@"please input the word";
    [self.view addSubview:textField2];
    
    btn2=[UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame=CGRectMake(27, 200 , self.view.frame.size.width-27*2, 40);
    [btn2 setTitle:@"回到上一个视图" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btn2TouchDown:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
    
    btn4=[UIButton buttonWithType:UIButtonTypeSystem];
    btn4.frame=CGRectMake(27, 300 , self.view.frame.size.width-27*2, 40);
    [btn4 setTitle:@"下一个视图" forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(btn4TouchDown:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn4];
}

-(void)btn2TouchDown:(UIButton *)sender
{
    FirstViewController *firstView=[[FirstViewController alloc]init];
    [firstView setPassArg:textField2.text];
    //[self.delegate setPassArg:textField2.text];
    [self presentViewController:firstView animated:YES completion:nil];
   // [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)btn4TouchDown:(UIButton *)sender
{
    ThirdViewController *thirdView=[[ThirdViewController alloc]init];
    thirdView.thirdStr=textField2.text;
    [self presentViewController:thirdView animated:YES completion:nil];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [textField2 resignFirstResponder];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    textField2.text=self.secondStr;
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
