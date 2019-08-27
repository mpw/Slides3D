//
//  IntroSlide.h
//  Slides3D
//
//  Created by Marcel Weiher on 18.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCSlide.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCBulletSlide : ASCSlide

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *bullets;
@end

NS_ASSUME_NONNULL_END
