//
//  SocialItem.m
//  ZoomingIcons
//
//  Created by JIAN WANG on 6/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "SocialItem.h"

@implementation SocialItem

-(instancetype)initWithImageName:(NSString *)imageName andColor:(UIColor *)color andName:(NSString *)name andSummary:(NSString *)summary {
    self = [super init];
    if (self) {
        _itemImage = [UIImage imageNamed:imageName];
        _itemColor = color;
        _itemName = name;
        _itemSummary = summary;
    }
    
    return self;
}

@end
