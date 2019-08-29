//
//  ASCSlideWithFigure.h
//  Slides3D
//
//  Created by Marcel Weiher on 29.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCSlideSkinning.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCSlideWithFigure : ASCSlideSkinning
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *bullets;
@property (nonatomic, assign) double delayInSeconds;

@end

NS_ASSUME_NONNULL_END
