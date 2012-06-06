//
//  SMViewController.m
//  UISoundMixer
//
//  Created by Krutarth Majithiya on 6/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()
- (void)faderSliderInit;
- (void)glowLabelInit;
@end

@implementation SMViewController

@synthesize  faderSlider = _faderSlider;
@synthesize glow = _glow;


#pragma mark -
#pragma mark FaderSlider init and action listner

- (void)faderSliderInit {
    
    //Init Fader slider UI, set listener method and Transform it to vertical
    [_faderSlider addTarget:self action:@selector(faderSliderAction:) forControlEvents:UIControlEventValueChanged];
    _faderSlider.backgroundColor = [UIColor clearColor];
    UIImage *stetchTrack = [[UIImage imageNamed:@"faderTrack.png"]
                            stretchableImageWithLeftCapWidth:10.0 topCapHeight:0.0];
    [_faderSlider setThumbImage: [UIImage imageNamed:@"faderKey.png"] forState:UIControlStateNormal];
    [_faderSlider setMinimumTrackImage:stetchTrack forState:UIControlStateNormal];
    [_faderSlider setMaximumTrackImage:stetchTrack forState:UIControlStateNormal];
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * -0.5);
    _faderSlider.transform = trans;
    
}

- (void)faderSliderAction:(id)sender
{
    // UISlider *slider = (UISlider *)sender;
    [_glow setText:[NSString stringWithFormat:@"%i", (int)[_faderSlider value]]];
}

#pragma mark -
#pragma mark Glowing label initialize

- (void)glowLabelInit {
    [_glow setText:[NSString stringWithFormat:@"%i", 0]];
    _glow.glowColor = [UIColor colorWithRed:(62.0/255.0) green:(136.0/255.0) blue:(255.0/255.0) alpha:0.75f];
	_glow.glowOffset = CGSizeMake(0.0f, 5.0f);
	_glow.glowRadius = 30.0f;
}

#pragma mark -
#pragma mark Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self faderSliderInit];
    [self glowLabelInit];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
