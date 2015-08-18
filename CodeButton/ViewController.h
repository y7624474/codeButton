//
//  ViewController.h
//  CodeButton
//
//  Created by TWer  on 8/18/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(void)createText:(CGRect) frame Title:(NSString*) title;
-(void)createButton:(CGRect) frame Title:(NSString*) title;
-(void)clicknumbtn:(id)sender;

@property (strong, nonatomic) UITextField *resultText;

@end

