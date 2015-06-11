//
//  SocialItem.h
//  ZoomingIcons
//
//  Created by JIAN WANG on 6/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SocialItem : NSObject

@property (nonatomic) UIImage *itemImage;
@property (nonatomic) UIColor *itemColor;
@property (nonatomic) NSString *itemName;
@property (nonatomic) NSString *itemSummary;

-(instancetype)initWithImageName:(NSString *)imageName andColor:(UIColor *)color andName:(NSString *)name andSummary:(NSString *)summary;

@end
