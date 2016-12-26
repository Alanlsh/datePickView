//
//  ViewController.m
//  PickView
//
//  Created by Alan on 2016/12/26.
//  Copyright © 2016年 Alan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 选择器
 数据源须自定义
 */
@property (nonatomic, strong) UIPickerView *pickerView;

/**
 日期选择器
 数据源不可自定义
 */
@property (nonatomic, strong) UIDatePicker *dataPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.dataPickerView];
    
}


- (void)birthdayChange:(UIDatePicker *)sender
{
    NSLog(@"________________%@___________________",sender.date);
}

- (UIDatePicker *)dataPickerView
{
    if (!_dataPickerView) {
        _dataPickerView = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 100, 375, 200)];

        NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-7111111];
        
        // 默认选项时间
        _dataPickerView.date = date;
        
        // 最早时间
        _dataPickerView.minimumDate = date;
        
        // 最晚时间
        _dataPickerView.maximumDate = [NSDate date];
        
        // 显示格式
        _dataPickerView.datePickerMode = UIDatePickerModeCountDownTimer;
        
        // 显示语言区域
        _dataPickerView.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ZH_CN"];
        
        
        [_dataPickerView addTarget:self action:@selector(birthdayChange:) forControlEvents:UIControlEventValueChanged];
        
    }

    return  _dataPickerView;
}

@end
