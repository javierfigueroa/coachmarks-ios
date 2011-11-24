//
//  CoachMarkCenter.h
//  CoachMarksKit
//
//  Created by Javier Figueroa on 11/20/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CoachMarkView.h"

@interface CoachMarkCenter : NSObject {
	NSMutableArray *_coachMarks;
	BOOL _active;
	CoachMarkView *_coachMarkView;
	CGRect _coachMarkFrame;
}

+ (CoachMarkCenter*) defaultCenter;
- (void) showCoachMarkWithMessage:(NSString*)message style:(CoachMarkStyle)coachMarkStyle andFrame:(CGRect)frame;

@end
