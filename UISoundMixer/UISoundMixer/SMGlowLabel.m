//
//  SMGlowLabel.m
//  UISoundMixer
//
//  Created by Krutarth Majithiya on 6/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SMGlowLabel.h"

@implementation SMGlowLabel

@synthesize glowColor;
@synthesize glowOffset;
@synthesize glowRadius;

#pragma mark Initialize iVars

- (id) initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        //init iVars here
    }
    return self;
}

- (void)dealloc{
    //Clean up
}

#pragma mark drawTextInRect for drawing text

-(void)drawTextInRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetShadowWithColor( context, glowOffset, glowRadius, [glowColor CGColor] );   
	[super drawTextInRect:rect];
}

@end
