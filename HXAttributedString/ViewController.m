//
//  ViewController.m
//  HXAttributedString
//
//  Created by  MAC on 15/2/13.
//  Copyright (c) 2015年 华夏大地教育. All rights reserved.
//

#import "ViewController.h"
#import "HXAttributedString.h"

@interface ViewController ()<UITextViewDelegate>
{
    NSString * string;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    string = @"<span style=\"font-size: 16px;\"><a href=\"http://www.w3school.com.cn\">W3School</a>      针对自考通过率低的部分专业课程开设的<span style=\"font-size: 24px; color: #ff6600;\">特色班级</span>，<span style=\"color: #99cc00;\">学习顾问</span>在学习期间每周联系学员，建立特色<span style=\"background:red\">学员档案</span>，监督、鼓励学员克服学习过程中的<u>各种困难</u>，跟踪学习情况，根据学员所学课程及自身情况，提供<span style=\"color: #99cc00;\">高效个性化学习方法、学习计划、应试技巧等全方位的专业性特色辅导</span>！</span>\n\r<br><font face=\"verdana\" color=\"green\">This is some text!</font><p align=\"center\" >This is some text center!</p>";
    
    //html中默认字体大小为12
    
    _myTextView.editable = NO;
    _myTextView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Press:(id)sender {
    
    _myTextView.attributedText = [NSAttributedString attributedStringFromHTMLString:string WithLineSpacing:20];
}

- (IBAction)button2Press:(id)sender {
    
    _myTextView.attributedText = [NSAttributedString attributedStringFromHTMLString:string];
    _myTextView.font = [UIFont systemFontOfSize:19];
}

- (IBAction)button3Press:(id)sender {
    
    NSAttributedString * str = [NSAttributedString attributedStringFromHTMLString:string WithLineSpacing:8];
    
    _myTextView.attributedText = [str attributedStringWithFontSizeMultiple:1.5];
}

- (IBAction)button4Press:(id)sender {
    NSAttributedString * str = [NSAttributedString attributedStringFromHTMLString:string WithLineHeightMultiple:1.5];
    _myTextView.attributedText = [str attributedStringWithFontSizeMultiple:1.5];
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    NSLog(@"%@",URL);
    return YES;
}
@end
