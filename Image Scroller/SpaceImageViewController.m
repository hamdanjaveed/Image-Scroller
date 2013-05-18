//
//  SpaceImageViewController.m
//  Image Scroller
//
//  Created by Hamdan Javeed on 2013-05-18.
//  Copyright (c) 2013 Glass Cube. All rights reserved.
//

#import "SpaceImageViewController.h"

@interface SpaceImageViewController ()

@end

@implementation SpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // set the imageURL to be an image of space, courtesy of APOD
    self.imageURL = [[NSURL alloc] initWithString:@"http://apod.nasa.gov/apod/image/1305/godafoss1600vetter.jpg"];
}

@end
