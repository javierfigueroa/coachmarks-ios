//
//  ViewController.m
//  CoachMarksTest
//
//  Created by Javier Figueroa on 11/22/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "ViewController.h"
#import "CoachMarkCenter.h"

#define kMessage @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt imperdiet dolor, eu auctor neque porta vel. Maecenas sed suscipit nunc. Proin sit amet gravida est."

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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showTopPopupLeft:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopupLeft andFrame:frame];
}

- (IBAction)showTopPopupMiddle:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopupMiddle andFrame:frame];
}

- (IBAction)showTopPopupRight:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopupRight andFrame:frame];
}

- (IBAction)showBottomPopdownLeft:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, 
                              screen.size.height - height - topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopdownLeft andFrame:frame];
}

- (IBAction)showBottomPopdownMiddle:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, 
                              screen.size.height - height - topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopdownMiddle andFrame:frame];
}

- (IBAction)showBottomPopdownRight:(id)sender {
    int width = 200;
    int height = 100;
    int topBarHeight = 44;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect frame = CGRectMake(screen.size.width / 2  - width / 2, 
                              screen.size.height - height - topBarHeight, width, height);
    
    [[CoachMarkCenter defaultCenter] showCoachMarkWithMessage:kMessage style:CoachMarkStylePopdownRight andFrame:frame];
}

- (IBAction) showModalPopup:(id)sender {
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
