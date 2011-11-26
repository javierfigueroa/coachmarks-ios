//
//  CoackMarkView.m
//  CoachMarksKit
//
//  Created by Javier Figueroa on 11/20/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "CoachMarkView.h"

#define HEIGHTOFPOPUPTRIANGLE 20
#define WIDTHOFPOPUPTRIANGLE 10
#define TEXTMARGIN 10
#define BORDER 8
#define STROKE 2
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

- (void) drawPopupUpMiddle {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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

- (void) drawPopupUpLeft {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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
                            BORDER + STROKE + PADDING, 
                            HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            WIDTHOFPOPUPTRIANGLE/2 + PADDING, 
                            STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            BORDER + STROKE + PADDING + WIDTHOFPOPUPTRIANGLE, 
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

- (void) drawPopupUpRight {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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
                            currentFrame.size.width - STROKE - PADDING - WIDTHOFPOPUPTRIANGLE - BORDER, 
                            HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            currentFrame.size.width - (WIDTHOFPOPUPTRIANGLE/2) - STROKE, 
                            STROKE + PADDING);
    
    CGContextAddLineToPoint(context, 
                            currentFrame.size.width - STROKE - PADDING - BORDER, 
                            HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING);
    
    CGContextAddArcToPoint(context, 
                           currentFrame.size.width - STROKE - PADDING, 
                           HEIGHTOFPOPUPTRIANGLE + STROKE + PADDING, 
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

- (void) drawPopdownMiddle {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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

- (void) drawPopdownLeft {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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
                            BORDER + STROKE + PADDING + WIDTHOFPOPUPTRIANGLE, 
                            currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
    
    CGContextAddLineToPoint(context, 
                            WIDTHOFPOPUPTRIANGLE/2 + PADDING, 
                            currentFrame.size.height - STROKE - PADDING);
    
    CGContextAddLineToPoint(context, 
                            BORDER + STROKE + PADDING, 
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

- (void) drawPopdownRight {
    CGRect currentFrame = self.bounds;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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
                            currentFrame.size.width - STROKE - PADDING - BORDER, 
                            currentFrame.size.height - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
    
    CGContextAddLineToPoint(context, 
                            currentFrame.size.width - (WIDTHOFPOPUPTRIANGLE/2) - STROKE, 
                            currentFrame.size.height - STROKE - PADDING);
    
    CGContextAddLineToPoint(context, 
                            currentFrame.size.width - STROKE - PADDING - WIDTHOFPOPUPTRIANGLE - BORDER, 
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
    
    CGContextSetShadow(context, CGSizeMake(-1, 1), 3);
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

- (CGRect) getRectForPopupUp {
    CGRect currentFrame = _messageRect;
    return CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                      STROKE + PADDING + TEXTMARGIN + HEIGHTOFPOPUPTRIANGLE, 
                      currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                      currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
}

- (CGRect) getRectForPopdown {
    CGRect currentFrame = _messageRect;
    return CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                      STROKE + PADDING + TEXTMARGIN, 
                      currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                      currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING - HEIGHTOFPOPUPTRIANGLE);
}

- (CGRect) getRectForModal {
    CGRect currentFrame = _messageRect;
    return CGRectMake(STROKE + PADDING + TEXTMARGIN, 
                      STROKE + PADDING + TEXTMARGIN * 2, 
                      currentFrame.size.width - (TEXTMARGIN*2) - STROKE - PADDING, 
                      currentFrame.size.height - (TEXTMARGIN*2) - STROKE - PADDING);
} 

- (void) drawRect:(CGRect)rect{
    
    UILabel *label = [[UILabel alloc] init];
    switch (_style) {
        case CoachMarkStylePopupMiddle:
            [self drawPopupUpMiddle];
            label.frame = [self getRectForPopupUp];
            break;
        case CoachMarkStylePopupLeft:
            [self drawPopupUpLeft];
            label.frame = [self getRectForPopupUp];
            break;
        case CoachMarkStylePopupRight:
            [self drawPopupUpRight];
            label.frame = [self getRectForPopupUp];
            break;
        case CoachMarkStylePopdownMiddle: 
            [self drawPopdownMiddle];
            label.frame = [self getRectForPopdown];
            break;
        case CoachMarkStylePopdownLeft: 
            [self drawPopdownLeft];
            label.frame = [self getRectForPopdown];
            break;
        case CoachMarkStylePopdownRight: 
            [self drawPopdownRight];
            label.frame = [self getRectForPopdown];
            break;
        default: 
            [self drawModal];
            label.frame = [self getRectForModal];
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
