//
//  DetailedViewController.m
//  ZoomingIcons
//
//  Created by JIAN WANG on 6/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageVIew;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = self.item.itemColor;
    self.imageVIew.image = self.item.itemImage;
    self.nameLabel.text = self.item.itemName;
    self.summaryLabel.text = self.item.itemSummary;
}

- (IBAction)dismissController:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
