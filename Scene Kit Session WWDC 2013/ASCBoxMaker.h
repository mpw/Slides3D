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
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float yHeight;
@property (nonatomic, assign) float padding;
@property (nonatomic, assign) float fontSize;
@property (nonatomic, assign) NSPoint position;



-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color at:(NSPoint)p;
-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color;
-(SCNNode*)box:(NSString*)text frame:(NSRect)frame;
-(SCNNode*)box:(NSString*)text width:(float)w color:(NSColor*)color;
-(SCNNode*)box:(NSString*)text width:(float)w;
-(void)nextLine;

@end

NS_ASSUME_NONNULL_END
