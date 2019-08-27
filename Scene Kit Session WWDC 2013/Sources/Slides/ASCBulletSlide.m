//
//  IntroSlide.m
//  Slides3D
//
//  Created by Marcel Weiher on 18.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCBulletSlide.h"
#import "ASCSlideTextManager.h"

@implementation ASCBulletSlide

- (void)setupSlideWithPresentationViewController:(ASCPresentationViewController *)presentation {
    // retrieve the text manager
    ASCSlideTextManager *textManager = [self textManager];

    //add a title
    [textManager setTitle:self.title];

    //add 2 bullets
    for ( NSString *text in self.bullets) {
        [textManager addBullet:text atLevel:0];
    }
}


@end
