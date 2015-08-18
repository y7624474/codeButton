//
//  ViewController.m
//  CodeButton
//
//  Created by TWer  on 8/18/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
//    UITextField *resultText;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButton:CGRectMake(75, 220, 50, 30) Title:@"1"];
    [self createButton:CGRectMake(135, 220, 50, 30) Title:@"2"];
    [self createButton:CGRectMake(195, 220, 50, 30) Title:@"3"];
    [self createButton:CGRectMake(75, 260, 50, 30) Title:@"4"];
    [self createButton:CGRectMake(135, 260, 50, 30) Title:@"5"];
    [self createButton:CGRectMake(195, 260, 50, 30) Title:@"6"];
    [self createButton:CGRectMake(75, 300, 50, 30) Title:@"7"];
    [self createButton:CGRectMake(135, 300, 50, 30) Title:@"8"];
    [self createButton:CGRectMake(195, 300, 50, 30) Title:@"9"];
    [self createText:CGRectMake(80, 180, 170, 40) Title:@"result"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)createText:(CGRect) frame Title:(NSString*) title
{
    _resultText=[UITextField new];
    _resultText.frame=frame;
    _resultText.backgroundColor=[UIColor grayColor];
    [self.view addSubview:_resultText];
}

-(void)createButton:(CGRect) frame Title:(NSString*) title
{
    UIButton *buttonNum=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonNum.frame=frame;
    [buttonNum setTitle:title forState:UIControlStateNormal];
    SEL eventHander=@selector(clicknumbtn:);
    [buttonNum addTarget:self action:eventHander forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonNum];
}


-(void)clicknumbtn:(id)sender
{
    UIButton *btn=sender;
    NSString* log=[btn titleForState:UIControlStateNormal];
    NSLog(@"%@",log);
    _resultText.text=log;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
