//
//  ImageViewController.m
//  Image Scroller
//
//  Created by Hamdan Javeed on 2013-05-18.
//  Copyright (c) 2013 Glass Cube. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController () <UIScrollViewDelegate>
// the image url (can be local or remote)
@property (strong, nonatomic) NSURL *imageURL;
// the scroll view in which the image is displayed
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
// the image view that holds the image
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation ImageViewController

// ---------- Instance Methods ---------- //

// resets the image and scroll views
- (void)resetImage {
    // get the image and initialize the image view
    NSData *imageData = [NSData dataWithContentsOfURL:self.imageURL];
    UIImage *image = [UIImage imageWithData:imageData];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    
    // set the scroll view's content size to match the image
    self.scrollView.contentSize = image.size;
    
    // add the image view too the scroll view
    [self.scrollView addSubview:self.imageView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // when the view loads, reset the image
    [self resetImage];
}

// ---------- Getters and Setters ---------- //

- (void)setImageURL:(NSURL *)imageURL {
    _imageURL = imageURL;
    
    // whenever the image URL is changed, reset the image
    [self resetImage];
}

@end
