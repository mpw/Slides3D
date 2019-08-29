//
//  ASCSimpleTextSlide.h
//  Slides3D
//
//  Created by Marcel Weiher on 15.05.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCSlide.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCChapterSlide : ASCSlide

@property (nonatomic,strong)  NSString *text;
@property (nonatomic,strong)  NSString *subtitle;

@end

NS_ASSUME_NONNULL_END
