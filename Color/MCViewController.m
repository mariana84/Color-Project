//
//  MCViewController.m
//  Color
//
//  Created by Mariana Carrillo on 7/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MCViewController.h"

@implementation MCViewController

/* homework: add another button like the first button and have a msg appear in log when pressed - by next weds
 and set up github */

@synthesize listOfColors, shouldCycle;

- (IBAction)colorButtonPressed {
    NSLog(@"Button pressed");
    
    self.shouldCycle = !self.shouldCycle;
    
        [self startCycleOfColors];
        
    
}

- (void)startCycleOfColors {
    
    if (shouldCycle == YES){
        
        [self.view setBackgroundColor:[self returnColor]];
        [self performSelector:@selector(startCycleOfColors) withObject:nil afterDelay:0.5];
    }
    
  
    
}
- (UIColor *)returnColor {
        
    
    int index = arc4random()%5;
    
    // fetch color from listOfColors
    UIColor *currentColor = [listOfColors objectAtIndex:index];
    
    
    return currentColor;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.shouldCycle = NO;
    
    
    self.listOfColors = [NSArray arrayWithObjects:
                             [UIColor redColor],
                             [UIColor blueColor],
                             [UIColor purpleColor],
                             [UIColor magentaColor],
                             [UIColor orangeColor],
                             [UIColor colorWithRed:0.545 green:0.925 blue:1.0 alpha:1.0f]
                             , nil];

    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [listOfColors release];
    [super dealloc];
}

@end
