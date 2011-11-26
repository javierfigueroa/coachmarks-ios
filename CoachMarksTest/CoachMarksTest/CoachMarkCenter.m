//
//  CoachMarkCenter.m
//  CoachMarksKit
//
//  Created by Javier Figueroa on 11/20/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "CoachMarkCenter.h"
#import "CoachMarkView.h"

#define kOverlay 77777

@implementation CoachMarkCenter


+ (CoachMarkCenter*) defaultCenter {
    static CoachMarkCenter *defaultCenter = nil;
	if (!defaultCenter) {
		defaultCenter = [[CoachMarkCenter alloc] init];
	}
	return defaultCenter;
}

- (id) init {
    
    if ((self=[super init])) { 
        _coachMarks = [[NSMutableArray alloc] init];
        _active = NO;
        
        _coachMarkFrame = [UIApplication sharedApplication].keyWindow.bounds;    
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisappear:) name:UIKeyboardDidHideNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationWillChange:) name:UIApplicationWillChangeStatusBarOrientationNotification object:nil];
    }
    
	return self;
}


#pragma mark Show Alert Message
- (void) showAlerts{
	
	if([_coachMarks count] < 1) {
		_active = NO;
		return;
	}
	
	_active = YES;	
    
    
    UIButton *overlay = [[[UIButton alloc] initWithFrame:[UIScreen mainScreen].bounds]autorelease];
    overlay.tag = kOverlay;
    overlay.transform = CGAffineTransformIdentity;
    overlay.alpha = 0;
    [overlay addTarget:self action:@selector(myCellButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    overlay.backgroundColor = [UIColor blackColor];
    [[UIApplication sharedApplication].keyWindow addSubview:overlay];
    
	_coachMarkView.transform = CGAffineTransformIdentity;
	_coachMarkView.alpha = 0;
	[[UIApplication sharedApplication].keyWindow addSubview:_coachMarkView];
	
	UIInterfaceOrientation o = [UIApplication sharedApplication].statusBarOrientation;
	CGFloat degrees = 0;
	if(o == UIInterfaceOrientationLandscapeLeft ) degrees = -90;
	else if(o == UIInterfaceOrientationLandscapeRight ) degrees = 90;
	else if(o == UIInterfaceOrientationPortraitUpsideDown) degrees = 180;
	_coachMarkView.transform = CGAffineTransformMakeRotation(degrees * M_PI / 180);
	_coachMarkView.transform = CGAffineTransformScale(_coachMarkView.transform, 2, 2);
	
	
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.25];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(animationStep2)];
	
	_coachMarkView.transform = CGAffineTransformMakeRotation(degrees * M_PI / 180);
	_coachMarkView.frame = CGRectMake((int)_coachMarkView.frame.origin.x, (int)_coachMarkView.frame.origin.y, _coachMarkView.frame.size.width, _coachMarkView.frame.size.height);
	_coachMarkView.alpha = 1;
    overlay.alpha = 0.5;
	
	[UIView commitAnimations];
	
	
}
- (IBAction)myCellButtonPressed:(id)sender{
	[UIView beginAnimations:nil context:nil];
    UIButton *overlay = (UIButton *)[[UIApplication sharedApplication].keyWindow viewWithTag:kOverlay];
    
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(animationStep3)];
	
	UIInterfaceOrientation o = [UIApplication sharedApplication].statusBarOrientation;
	CGFloat degrees = 0;
	if(o == UIInterfaceOrientationLandscapeLeft ) degrees = -90;
	else if(o == UIInterfaceOrientationLandscapeRight ) degrees = 90;
	else if(o == UIInterfaceOrientationPortraitUpsideDown) degrees = 180;
	_coachMarkView.transform = CGAffineTransformMakeRotation(degrees * M_PI / 180);
	_coachMarkView.transform = CGAffineTransformScale(_coachMarkView.transform, 0.5, 0.5);
	
	_coachMarkView.alpha = 0;
    overlay.alpha = 0;
	[UIView commitAnimations];
}

- (void)clean {
    _active = NO;
    UIButton *overlay = (UIButton *)[[UIApplication sharedApplication].keyWindow viewWithTag:kOverlay];
    [overlay removeFromSuperview];
	[_coachMarkView removeFromSuperview];
    
    if ([_coachMarks count] > 0) {
        [_coachMarks removeObjectAtIndex:0];
    }
}

- (void) animationStep3{
    [self clean];
	[self showAlerts];
}


- (void) showCoachMarkWithMessage:(NSString*)message style:(CoachMarkStyle)coachMarkStyle andFrame:(CGRect)frame {
    CoachMarkView *view = [[CoachMarkView alloc] initWithFrame:frame message:message andStyle:coachMarkStyle];
    [_coachMarks addObject:view];
    _coachMarkView = view;
    
    if (!_active) {
        [self showAlerts];
    }
}

#pragma mark System Observation Changes
- (void) keyboardWillAppear:(NSNotification *)notification {
	[self clean];    
}

- (void) keyboardWillDisappear:(NSNotification *) notification {
    [self clean];
    
}

- (void) orientationWillChange:(NSNotification *) notification {
	[self clean];	
}


@end
