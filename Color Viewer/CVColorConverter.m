//
//  CVColorConverter.m
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//

#import "CVColorConverter.h"

@implementation CVColorConverter

- (CGColorRef)createColorsUsingD65LabProfile:(NSColor *)unCalibratedColors {
    
    // Grab D65 Lab values from the initial data set
    
    CGFloat comp[4] = {0.5,1.0, 0.7, 1.0};
    
    // Create the D65 Lab colorspace
    
    const CGFloat whitePoint[3] = {95.00, 100.00, 108.90}; // XYZ values for D65
    const CGFloat blackPoint[3] = {0.0, 0.0, 0.0}; // XYZ values of the PCS black point
    const CGFloat range[4] = {-128.0, 128.0, -128.0, 128};
    
    CGColorSpaceRef colorspace = CGColorSpaceCreateLab(whitePoint,blackPoint,range);
    
    // Create the color based on colorspace and color values
    
    CGColorRef labD65Color = CGColorCreate(colorspace, comp);
    return labD65Color;
    
}

- (CGColorRef)convertFromLabD65ToAdobeRGB:(NSColor *)labD65Color {
    
    // Convert D65 Lab values to AdobeRGB values
    
    NSColor* adobeRGBColor = [labD65Color colorUsingColorSpace:[NSColorSpace  adobeRGB1998ColorSpace]];
    
    return NULL;
}

- (CGColorRef)convertFromLabD65ToLabD50:(NSColor *)labD65Color {
    
    // Convert D65 Lab values to D50 Lab values using ICC color profiles
    
    // CGColorRef CIELabD65Profile = initWithColorsyncProfile:CIELabD65.icc;
    
    
    // Convert D65 Lab values to D50 Lab values using Bradford transforms
    return NULL;
    
}

- (CGColorRef)convertFromLabD50ToAdobeRGB:(NSColor *)labD50Color {
    
    // Convert D50 Lab values to AdobeRGB values
    

    
    // Use of NSColor (below) not used here. Using Core Graphics (CG) instead.
    // NSColor* adobeRGBColor = [labD50Color colorUsingColorSpace:[NSColorSpace  adobeRGB1998ColorSpace]];
    
    return NULL;
}


@end
