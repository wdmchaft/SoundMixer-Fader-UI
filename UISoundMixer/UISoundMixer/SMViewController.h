//
//  SMViewController.h
//  UISoundMixer
//
//  Created by Krutarth Majithiya on 6/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMGlowLabel.h"

@interface SMViewController : UIViewController

@property (retain, nonatomic) IBOutlet UISlider *faderSlider;
@property (retain, nonatomic) IBOutlet SMGlowLabel *glow;

@end
