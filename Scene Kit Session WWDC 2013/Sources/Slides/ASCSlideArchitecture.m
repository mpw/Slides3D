/*
     File: ASCSlideArchitecture.m
 Abstract:  Architecture slide. Show a diagram built using titled box (see utilities) 
  Version: 1.0
 
 Disclaimer: IMPORTANT:  This Apple software is supplied to you by Apple
 Inc. ("Apple") in consideration of your agreement to the following
 terms, and your use, installation, modification or redistribution of
 this Apple software constitutes acceptance of these terms.  If you do
 not agree with these terms, please do not use, install, modify or
 redistribute this Apple software.
 
 In consideration of your agreement to abide by the following terms, and
 subject to these terms, Apple grants you a personal, non-exclusive
 license, under Apple's copyrights in this original Apple software (the
 "Apple Software"), to use, reproduce, modify and redistribute the Apple
 Software, with or without modifications, in source and/or binary forms;
 provided that if you redistribute the Apple Software in its entirety and
 without modifications, you must retain this notice and the following
 text and disclaimers in all such redistributions of the Apple Software.
 Neither the name, trademarks, service marks or logos of Apple Inc. may
 be used to endorse or promote products derived from the Apple Software
 without specific prior written permission from Apple.  Except as
 expressly stated in this notice, no other rights or licenses, express or
 implied, are granted by Apple herein, including but not limited to any
 patent rights that may be infringed by your derivative works or by other
 works in which the Apple Software may be incorporated.
 
 The Apple Software is provided by Apple on an "AS IS" basis.  APPLE
 MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
 THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
 OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
 OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
 MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
 AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
 STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 
 Copyright (C) 2013 Apple Inc. All Rights Reserved.
 
 
 Copyright © 2013 Apple Inc. All rights reserved.
 WWDC 2013 License
 
 NOTE: This Apple Software was supplied by Apple as part of a WWDC 2013
 Session. Please refer to the applicable WWDC 2013 Session for further
 information.
 
 IMPORTANT: This Apple software is supplied to you by Apple Inc.
 ("Apple") in consideration of your agreement to the following terms, and
 your use, installation, modification or redistribution of this Apple
 software constitutes acceptance of these terms. If you do not agree with
 these terms, please do not use, install, modify or redistribute this
 Apple software.
 
 In consideration of your agreement to abide by the following terms, and
 subject to these terms, Apple grants you a non-exclusive license, under
 Apple's copyrights in this original Apple software (the "Apple
 Software"), to use, reproduce, modify and redistribute the Apple
 Software, with or without modifications, in source and/or binary forms;
 provided that if you redistribute the Apple Software in its entirety and
 without modifications, you must retain this notice and the following
 text and disclaimers in all such redistributions of the Apple Software.
 Neither the name, trademarks, service marks or logos of Apple Inc. may
 be used to endorse or promote products derived from the Apple Software
 without specific prior written permission from Apple. Except as
 expressly stated in this notice, no other rights or licenses, express or
 implied, are granted by Apple herein, including but not limited to any
 patent rights that may be infringed by your derivative works or by other
 works in which the Apple Software may be incorporated.
 
 The Apple Software is provided by Apple on an "AS IS" basis. APPLE MAKES
 NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE
 IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
 OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
 OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
 MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
 AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
 STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 
 EA1002
 5/3/2013
 */

#import "ASCPresentationViewController.h"
#import "ASCSlideTextManager.h"
#import "ASCSlide.h"
#import "Utils.h"
#import "ASCBoxMaker.h"


@interface ASCSlideArchitecture : ASCSlide
@end

@implementation ASCSlideArchitecture

- (void)setupSlideWithPresentationViewController:(ASCPresentationViewController *)presentation {
    // Add text
    [self.textManager setTitle:@"Scene Kit"];
    [self.textManager addBullet:@"High level Objective-C API" atLevel:0];
    [self.textManager addBullet:@"Scene graph" atLevel:0];

    // Retrieve the root node of this slide
    SCNNode *container = self.rootNode;

    // Add an intermediate node that will contain all our boxes
    SCNNode *shapeGroup = [SCNNode node];
    [container addChildNode:shapeGroup];

    // Create and place the boxes
    NSColor *green = [NSColor colorWithDeviceRed:105 / 255.0 green:145.0 / 255.0 blue:14.0 / 255.0 alpha:1];

    ASCBoxMaker *boxer=[ASCBoxMaker new];

    boxer.p = NSMakePoint(-5,4.5);
    boxer.color = green;
    boxer.position = NSMakePoint(0,0);
    boxer.height = 70;
    boxer.padding = 5;
    boxer.yHeight = 1.5;


    // Cocoa box
    [shapeGroup addChildNode:[boxer box:@"Cocoa" width:500 color:[NSColor grayColor]]];
    [boxer nextLine];


    // Core Image box
    [shapeGroup addChildNode:[boxer box:@"Core Image" width:100]];

    // Scene Kit box
    [shapeGroup addChildNode:[boxer box:@"SceneKit" width:150 color:[NSColor orangeColor]]];

   // Core Animation box
    [shapeGroup addChildNode:[boxer box:@"Core Animation" width:130]];

    // GL Kit box
    [shapeGroup addChildNode:[boxer box:@"GL Kit" width:105 color:[NSColor grayColor]]];

    [boxer nextLine];
    [shapeGroup addChildNode:[boxer box:@"OpenGL" width:500 color:[NSColor colorWithDeviceRed:152 / 255.0 green:57 / 255.0 blue:189 / 255.0 alpha:1]]];

    [boxer nextLine];
    // Graphics Hardware box
    [shapeGroup addChildNode:[boxer box:@"Graphics Hardware" width:500 color:[NSColor colorWithDeviceRed:168 / 255.0 green:21 / 255.0 blue:1 / 255.0 alpha:1]]];
}

@end
