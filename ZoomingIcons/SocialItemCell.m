//
//  SocialItemCell.m
//  ZoomingIcons
//
//  Created by JIAN WANG on 6/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "SocialItemCell.h"
#import "SocialItem.h"

@interface SocialItemCell ()

@property (weak, nonatomic) IBOutlet UIView *cellViewColor;
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;


@end

@implementation SocialItemCell

-(void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundColor = [UIColor clearColor];
    self.cellViewColor.frame = self.bounds;;
    self.cellViewColor.layer.masksToBounds = YES;
    self.cellViewColor.layer.cornerRadius = self.bounds.size.width / 2;
}

-(void)configure:(SocialItem *)item {
    self.cellImageView.image = item.itemImage;
    self.cellImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.cellViewColor.backgroundColor = item.itemColor;
}

@end
