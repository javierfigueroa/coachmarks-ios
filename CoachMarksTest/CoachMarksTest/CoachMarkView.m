//
//  CoackMarkView.m
//  CoachMarksKit
//
//  Created by Javier Figueroa on 11/20/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "CoachMarkView.h"

#define HEIGHTOFPOPUPTRIANGLE 20
#define WIDTHOFPOPUPTRIANGLE 40
#define TEXTMARGIN 10
#define BORDER 8
#define STROKE 3
#define PADDING 0.5f
#define kBorderColor [UIColor lightGrayColor]
#define kFillColor [UIColor whiteColor]

@implementation CoachMarkView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _messageRect = frame;
        [super setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame message:(NSString *)message andStyle:(CoachMarkStyle)style {
    self = [self initWithFrame:frame];
    if (self) {
        _style = style;
        _text = message;
    }
    
    return self;
}

- (void) drawPopupUp {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineWidth(context, STROKE);
    CGContextSetStrokeColorWithColor(context, [kBorderColor CGColor]); 
    CGContextSetFillColorWithColor(context, [kFillColor CGColor]);
    
    // Draw and fill the bubble
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 
                         BORDER + STROKE + PADDING, 
                         STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING); 
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f - WIDTHOFPOPUPTRIANGLE / 2.0f) + PADDING, 
                            HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f) + PADDING, 
                            STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f + WIDTHOFPOPUPTRIANGLE / 2.0f) + PADDING, 
                            HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           round(currentFrame.size.width / 2.0f + WIDTHOFPOPUPTRIANGLE / 2.0f) - STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           STROKE + PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
                           BORDER - STROKE);
    
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void) drawPopupDown {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineWidth(context, STROKE);
    CGContextSetStrokeColorWithColor(context, [kBorderColor CGColor]); 
    CGContextSetFillColorWithColor(context, [kFillColor CGColor]);
    
    // Draw and fill the bubble
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 
                         BORDER + STROKE + PADDING, 
                         STROKE + PADDING);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           STROKE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE, 
                           round(currentFrame.size.width / 2.0f + WIDTHOFPOPUPTRIANGLE / 2.0f) - STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f + WIDTHOFPOPUPTRIANGLE / 2.0f) + PADDING, 
                            currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f), 
                            currentFrame.size.height - STROKE - PADDING);
    
    CGContextAddLineToPoint(context, 
                            round(currentFrame.size.width / 2.0f - WIDTHOFPOPUPTRIANGLE / 2.0f) + PADDING, 
                            currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE, 
                           STROKE + PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           STROKE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           STROKE + PADDING, 
                           BORDER - STROKE);
    
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void) drawModal {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineWidth(context, STROKE);
    CGContextSetStrokeColorWithColor(context, [kBorderColor CGColor]); 
    CGContextSetFillColorWithColor(context, [kFillColor CGColor]);
    
    CGContextMoveToPoint(context, 
                         BORDER + STROKE + PADDING, 
                         STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           round(currentFrame.size.width / 2.0f + WIDTHOFPOPUPTRIANGLE / 2.0f) - STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           BORDER - STROKE);        
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           currentFrame.size.height - STROKE - PADDING, 
                           STROKE + PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
                           BORDER - STROKE);
    
    CGContextAddArcToPoint(context, 
                           STROKE + PADDING, 
                           STROKE + HEIGHTOFPOPUPTRIANGLE + PADDING, 
                           currentFrame.size.width - STROKE - PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
                           BORDER - STROKE);
    
    
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
    
}

- (void) drawRect:(CGRect)rect{
    
    CGRect currentFrame = _messageRect;
    UILabel *label = [[UILabel alloc] init];
    switch (_style) {
        case CoachMarkStylePopupUp:
            [self drawPopupUp];
            
            label.frame = CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                                     STROKE + PADDING + TEXTMARGIN + HEIGHTOFPOPUPTRIANGLE, 
                                     currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                                     currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
            
            break;
        case CoachMarkStylePopupDown: 
            [self drawPopupDown];
            
            label.frame = CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                                     STROKE + PADDING + TEXTMARGIN, 
                                     currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                                     currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
            
            break;
        default: 
            [self drawModal];
            label.frame = CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                                     STROKE + PADDING + TEXTMARGIN, 
                                     currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                                     currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING);
            break;
    }
    
    
    self.opaque = YES;
    self.alpha = 0.9;
    
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.text = _text;
    label.numberOfLines = 0;
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Helvetica" size:14];
    [self addSubview:label];
    [label release];
    
    self.frame = _messageRect;
}

@end
