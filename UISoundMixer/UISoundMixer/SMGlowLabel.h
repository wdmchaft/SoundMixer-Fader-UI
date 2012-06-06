//
//  SMGlowLabel.h
//  UISoundMixer
//
//  Created by Krutarth Majithiya on 6/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMGlowLabel : UILabel

@property(readwrite, retain, nonatomic) UIColor *glowColor;
@property(readwrite, nonatomic) CGSize glowOffset;
@property(readwrite, nonatomic) CGFloat glowRadius;

@end
