//
//  CVColorConverter.h
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface CVColorConverter : NSObject {
    
}

- (CGColorRef)createColorsUsingD65LabProfile:(NSColor*)unCalibratedColors;
- (CGColorRef)convertFromLabD50ToAdobeRGB:(NSColor*)labD50Color;
- (CGColorRef)convertFromLabD65ToLabD50:(NSColor*)labD65Color;
- (CGColorRef)convertFromLabD65ToAdobeRGB:(NSColor*)labD65Color;


@end
