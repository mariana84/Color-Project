//
//  MCViewController.h
//  Color
//
//  Created by Mariana Carrillo on 7/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <stdlib.h>

@interface MCViewController : UIViewController {
    
    NSArray *listOfColors;
    BOOL shouldCycle;
    
}

- (IBAction)colorButtonPressed;
- (UIColor *)returnColor;
- (void)startCycleOfColors;


@property (nonatomic, retain) NSArray *listOfColors;
@property (nonatomic) BOOL shouldCycle;

@end
