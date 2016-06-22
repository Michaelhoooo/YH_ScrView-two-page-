//
//  ViewController.m
//  测试分页demo
//
//  Created by hezihao on 16/3/29.
//  Copyright © 2016年 webuddy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.Scroll.backgroundColor = [UIColor blueColor];
    self.Scroll.contentSize = CGSizeMake(375*2, 0);
    self.Scroll.bounces = NO;
    self.Scroll.showsVerticalScrollIndicator = NO;
    self.Scroll.pagingEnabled = YES;
    self.Scroll.delegate = self;
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, self.Scroll.frame.size.height)];
    view.backgroundColor = [UIColor grayColor];
    [self.Scroll addSubview:view];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(375, 0, 375, self.Scroll.frame.size.height)];
    view1.backgroundColor = [UIColor redColor];
    [self.Scroll addSubview:view1];
    self.btn_1.backgroundColor = [UIColor redColor];
    
}
- (IBAction)black_btn:(id)sender {
    [self.Scroll setContentOffset:CGPointMake(0, 0) animated:YES];
    
    
}
- (IBAction)red_btn:(id)sender {
    [self.Scroll setContentOffset:CGPointMake(375, 0) animated:YES];
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.x>=200) {
        self.btn_1.backgroundColor = [UIColor clearColor];
        self.btn_2.backgroundColor = [UIColor redColor];
    }
    if (scrollView.contentOffset.x<200) {
        self.btn_1.backgroundColor = [UIColor redColor];
        self.btn_2.backgroundColor = [UIColor clearColor];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
