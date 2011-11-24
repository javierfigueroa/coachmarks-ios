//
//  CoackMarkView.h
//  CoachMarksKit
//
//  Created by Javier Figueroa on 11/20/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum {
    CoachMarkStylePopupUp,
    CoachMarkStylePopupDown,
    CoachMarkStyleModal
} CoachMarkStyle;

@interface CoachMarkView : UIView {
    CGRect _messageRect;
	NSString *_text;
    CoachMarkStyle _style;   
}

- (id)initWithFrame:(CGRect)frame message:(NSString *)message andStyle:(CoachMarkStyle)style;

@end
