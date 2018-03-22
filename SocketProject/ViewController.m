//
//  ViewController.m
//  SocketProject
//
//  Created by yulong on 2018/3/21.
//  Copyright © 2018年 yulong. All rights reserved.
//

#import "ViewController.h"
#import "YLSocketManager.h"
#import "YLSRWebSocketManager.h"
@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic,copy) NSString *text;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    _text = textField.text;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)sendAction:(id)sender {
//    [[YLSocketManager share] sendMsg:self.text];
    [[YLSRWebSocketManager share] sendMsg:_text];
}
- (IBAction)connectAction:(id)sender {
//    [[YLSocketManager share] connect];
    [[YLSRWebSocketManager share] connect];
}
- (IBAction)closeAction:(id)sender {
//    [[YLSocketManager share] disConnect];
    [[YLSRWebSocketManager share] disConnect];
}

@end
