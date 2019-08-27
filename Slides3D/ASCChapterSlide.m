//
//  ASCSimpleTextSlide.m
//  Slides3D
//
//  Created by Marcel Weiher on 15.05.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCChapterSlide.h"
#import "ASCPresentationViewController.h"
#import "ASCSlideTextManager.h"

@implementation ASCChapterSlide


- (id)init {
    self=[super init];
    self.altitude=4.0;
    self.floorFalloff=1;
    self.floorImageName=@"titleBg";
    self.floorReflectivity=0.2;
    self.lightIntensities=@[ @(2)];
    self.pitch=-11.25;
    return self;
}
- (void)setupSlideWithPresentationViewController:(ASCPresentationViewController *)presentation {
    // retrieve the text manager
    ASCSlideTextManager *textManager = [self textManager];

    // add a text entry
    [textManager setChapterTitle:self.text];
}


@end
