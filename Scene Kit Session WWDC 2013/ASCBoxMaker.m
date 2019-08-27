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

-(float)zPos
{
    return 10.0;
}

-(SCNNode*)box:(NSString*)text frame:(NSRect)frame color:(NSColor*)color at:(NSPoint)p;
{
    // Core Image box
    SCNNode *box = [SCNNode asc_boxNodeWithTitle:text frame:frame color:color cornerRadius:2.0 centered:YES];
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




@end
