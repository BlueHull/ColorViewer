//
//  CVColorView.m
//  Color Viewer
//
//  Created by Peter Constable on 9/4/12.
//  Copyright (c) 2012 Imago Imaging. All rights reserved.
//

#import "CVColorView.h"

@implementation CVColorView

- (id)initWithFrame:(NSRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Include any custom initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    
    /*
     Code used to draw with Core Graphics
    - (void)drawRect:(NSRect)rect
    {
        CGContextRef myContext = [[NSGraphicsContext // 1
                                   currentContext] graphicsPort];
        
        // ********** Your drawing code here ********** // 2
        CGContextSetRGBFillColor (myContext, 1, 0, 0, 1);// 3
        CGContextFillRect (myContext, CGRectMake (0, 0, 200, 100 ));// 4
        CGContextSetRGBFillColor (myContext, 0, 0, 1, .5);// 5
        CGContextFillRect (myContext, CGRectMake (0, 0, 100, 200));// 6
    }
    */

    NSColor* labD50Color = [NSColor colorWithCalibratedRed:0.2 green: 0.5  blue: 0.5  alpha:0.75];
    // NSColor* backgroundColor = [NSColor orangeColor];
    
    // get the view geometry and fill the background.
    
    NSRect bounds = self.bounds;
    [labD50Color set];
    NSRectFill (bounds);
    
}

@end
