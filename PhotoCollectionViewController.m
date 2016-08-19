//
//  UICollectionViewController+PhotoCollectionViewController.m
//  Instagram
//
//  Created by Johny Babylon on 8/18/16.
//  Copyright © 2016 Johny Babylon. All rights reserved.
//

#import "PhotoCollectionViewController.h"

@interface PhotoCollectionViewController () {
    NSArray *myPhotos;
}

@end

@implementation PhotoCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myPhotos = [NSArray arrayWithObjects: @"jupiter.jpeg", @"tech_chavis.jpeg", @"messi.jpeg", nil ];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return myPhotos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[myPhotos objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
