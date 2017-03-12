//
//  ViewController.m
//  CZLCornerImage
//
//  Created by MAC on 2017/3/9.
//  Copyright © 2017年 czl. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+cornerImage.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *sizeImage;

@property (weak, nonatomic) IBOutlet UIImageView *circleImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *im =[UIImage imageNamed:@"re"];
    _sizeImage.image = [[im converSize:CGSizeMake(50, 50) radius:10] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _circleImage.image = [im circleImage];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
