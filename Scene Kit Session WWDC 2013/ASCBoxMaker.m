//
//  ASCBoxMaker.m
//  Slides3D
//
//  Created by Marcel Weiher on 27.08.19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

#import "ASCBoxMaker.h"
#import "ASCPresentationViewController.h"
#import "ASCSlideTextManager.h"
#import "ASCSlide.h"
#import "Utils.h"

@implementation ASCBoxMaker

-(instancetype)init
{
    self=[super init];
    self.fontSize=34;
    return self;
}

-(float)zPos
{
    return 10.0;
}

-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color at:(NSPoint)p;
{
    // Core Image box
    SCNNode *box = [SCNNode asc_boxNodeWithTitle:text fontSize:self.fontSize frame:frame color:color cornerRadius:2.0 centered:YES];
    box.scale = SCNVector3Make(0.02, 0.02, 0.02);
    box.position = SCNVector3Make(p.x, p.y, [self zPos]);
    return box;
}

-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color
{
    return [self box:text frame:frame color:color at:self.p];
}

-(SCNNode*)box:(NSString*)text frame:(NSRect)frame
{
    return [self box:text frame:frame color:self.color];
}

-(SCNNode*)box:(NSString*)text width:(float)w color:(NSColor*)color
{
    NSRect frame;
    frame.origin = self.position;
    frame.size.width = w;
    frame.size.height = self.height;
    NSPoint newPosition = self.position;
    newPosition.x += w + self.padding;
    self.position = newPosition;
    return [self box:text frame:frame color:color];
}

-(SCNNode*)box:(NSString*)text width:(float)w
{
    return [self box:text width:w color:self.color];
}

-(void)nextLine
{
    self.position = NSMakePoint(0,0);
    self.p = NSMakePoint( self.p.x, self.p.y - self.yHeight );
}

@end
