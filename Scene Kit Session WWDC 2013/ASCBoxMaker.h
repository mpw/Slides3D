//
//  ASCBoxMaker.h
//  Slides3D
//
//  Created by Marcel Weiher on 27.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SCNNode;

@interface ASCBoxMaker : NSObject

@property (nonatomic, assign) NSPoint p;
@property (nonatomic, strong) NSColor *color;

-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color at:(NSPoint)p;
-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color;
-(SCNNode*)box:(NSString*)text frame:(NSRect)frame;


@end

NS_ASSUME_NONNULL_END
