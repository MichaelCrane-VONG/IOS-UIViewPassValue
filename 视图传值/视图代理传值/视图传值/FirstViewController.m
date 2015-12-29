//
//  ViewController.m
//  视图传值
//
//  Created by myApple on 15/12/28.
//  Copyright © 2015年 myApple. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController
{
    UITextField *textField1;
    UIButton *btn1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    
    textField1=[[UITextField alloc]initWithFrame:CGRectMake(27, 40, self.view.frame.size.width-27*2, 40)];
    textField1.borderStyle=UITextBorderStyleRoundedRect;
    textField1.placeholder=@"please input the word";
    [self.view addSubview:textField1];

    btn1=[UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame=CGRectMake(27, 200, self.view.frame.size.width-27*2, 40);
    [btn1 setTitle:@"进入下一个视图" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(btn1TouchDown:) forControlEvents:UIControlEventTouchDown];
}

-(void)btn1TouchDown:(UIButton *)sender
{
    SecondViewController *secondView=[[SecondViewController alloc]init];
    [secondView setSecondStr:textField1.text];
    secondView.delegate=self;
    [self presentViewController:secondView animated:YES completion:nil];
    
}

-(void)setPassArg:(NSString *)str
{
    self.firstStr=str;
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [textField1 resignFirstResponder];
}

-(void)viewWillAppear:(BOOL)animated
{
     [super viewWillAppear:animated];
    NSLog(@"%@",_firstStr);
    textField1.text=self.firstStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
