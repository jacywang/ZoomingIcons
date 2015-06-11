//
//  MenuViewController.m
//  ZoomingIcons
//
//  Created by JIAN WANG on 6/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "MenuViewController.h"
#import "SocialItemCell.h"
#import "SocialItem.h"

static const float CELL_WIDTH = 100.0;
static const float ITEM_SPACING = 20;

@interface MenuViewController () <UICollectionViewDelegateFlowLayout>

@property (nonatomic) NSArray *itemArray;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Do any additional setup after loading the view.
    self.collectionView.contentInset = UIEdgeInsetsMake(150, 0, 0, 0);
    self.itemArray = [NSArray arrayWithArray:[self setupItemArray]];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 2;
            break;
        case 1:
            return 3;
            break;
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SocialItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    if (indexPath.section == 0) {
        [cell configure:self.itemArray[indexPath.row]];
    } else {
        [cell configure:self.itemArray[indexPath.row + indexPath.section + 1]];
    }
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    NSInteger numberOfItems = [collectionView numberOfItemsInSection:section];

    CGFloat edgeInset = (self.collectionView.bounds.size.width - numberOfItems * CELL_WIDTH - (numberOfItems - 1) * ITEM_SPACING) / 2;
    
    return UIEdgeInsetsMake(ITEM_SPACING, edgeInset, ITEM_SPACING, edgeInset);
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CELL_WIDTH, CELL_WIDTH);
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

#pragma mark - Help Method

-(NSArray *)setupItemArray {
    return @[
             [[SocialItem alloc] initWithImageName:@"icon-twitter" andColor:[UIColor colorWithRed:0.255 green:0.557 blue:0.910 alpha:1] andName:@"Twitter" andSummary:@"Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\"."],
             [[SocialItem alloc] initWithImageName:@"icon-facebook" andColor:[UIColor colorWithRed:0.239 green:0.239 blue:0.239 alpha:1] andName:@"Facebook" andSummary:@"Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities."],
             [[SocialItem alloc] initWithImageName:@"icon-youtube" andColor:[UIColor colorWithRed:0.729 green:0.188 blue:0.188 alpha:1] andName:@"Youtube" andSummary:@"YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos."],
             [[SocialItem alloc] initWithImageName:@"icon-vimeo" andColor:[UIColor colorWithRed:0.329 green:0.737 blue:0.988 alpha:1] andName:@"Vimeo" andSummary:@"Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein."],
             [[SocialItem alloc] initWithImageName:@"icon-instagram" andColor:[UIColor colorWithRed:0.325 green:0.498 blue:0.635 alpha:1] andName:@"Instagram" andSummary:@"Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr."]
             ];
}

@end
