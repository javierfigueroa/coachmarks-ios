//
//  ViewController.m
//  CoachMarksTest
//
//  Created by Javier Figueroa on 11/22/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "ViewController.h"
#import "CoachMarkCenter.h"

#define kMessage @"This is a test message for you coach mark test"

@implementation ViewController

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

- (IBAction)showTopBubble:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopupUp andFrame:frame];
}

- (IBAction)showBottomBubble:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, 
                              screen.size.height - height - topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopupDown andFrame:frame];
}

- (IBAction)showModalBubble:(id)sender {
    int width = 200;
    int height = 100;    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, 
                              screen.size.height /2 - height /2, 
                              width, 
                              height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStyleModal andFrame:frame];
}

@end
