//
//  ASCSlideWithFigure.m
//  Slides3D
//
//  Created by Marcel Weiher on 29.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCSlideWithFigure.h"
#import "ASCSlideTextManager.h"

@implementation ASCSlideWithFigure

-(void)setupInitialText
{
    ASCSlideTextManager *textManager = [self textManager];

    //add a title
    [textManager setTitle:self.title];

    //add 2 bullets
    for ( NSString *text in self.bullets) {
        [textManager addBullet:text atLevel:0];
    }
}

- (NSUInteger)numberOfSteps {
    return 2;
}

- (void)presentStepIndex:(NSUInteger)index withPresentionViewController:(ASCPresentationViewController *)controller {
    //retrieve the avatar model
    SCNNode *model = [self.ground childNodeWithName:@"avatar_attach" recursively:YES];

    //animate by default
    [SCNTransaction begin];

    switch (index) {
        case 0:
        {
            //wait a little bit before showing the avatar - otherwise it may slow down the transition from the previous slide
            double delayInSeconds = self.delayInSeconds;
            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
            dispatch_after(popTime, dispatch_get_main_queue(), ^(void) {
                //un-hide
                [SCNTransaction begin];
                [SCNTransaction setAnimationDuration:0];
                model.hidden = NO;
                [SCNTransaction commit];

                [SCNTransaction begin];
                [SCNTransaction setAnimationDuration:1.5];
                [SCNTransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
                model.opacity = 1; //reveal

                [SCNTransaction commit];
            });
        }
        break;
        case 1:
        [SCNTransaction setAnimationDuration:1.5];
        [model addAnimation:_animations[1] forKey:@"move"];
        break;
    }

    [SCNTransaction commit];
}

@end
