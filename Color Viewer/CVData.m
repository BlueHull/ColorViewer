//
//  CVData.m
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//
//

#import "CVData.h"

@implementation CVData

// Synthesizing the properties to create the accessors and ivars
// This is not technically necessary using the new LLVM 4.0 compiler in XCode 4.4
// but I'm leaving these in for clarity.

@synthesize colorName = _colorName;
@synthesize labD65_L = _labD65_L;
@synthesize labD65_a = _labD65_a;
@synthesize labD65_b = _labD65_b;
@synthesize labD50_L = _labD50_L;
@synthesize labD50_a = _labD50_a;
@synthesize labD50_b = _labD50_b;
@synthesize adobeRGB_R = _adobeRGB_R;
@synthesize adobeRGB_G = _adobeRGB_G;
@synthesize adobeRGB_B = _adobeRGB_B;
@synthesize labD50Values = _labD50Values;
@synthesize adobeRGBValues = _adobeRGBValues;
@synthesize colorSwatch = _colorSwatch;

@synthesize colorValueArray = _colorValueArray;



- (void)createLabD50Values{
    
    NSString *labD50Values = @"%f, %f, %f, self.labD50_L, self.labD50_a, self.labD50_b";

}

- (NSString *)createAdobeRGBValues{
    
    NSString *adobeRGBValuesString;
    adobeRGBValuesString = @"%f, %f, %f, self.adobeRGB_R, self.adobeRGB_G, self.adobeRGB_B";
    return adobeRGBValuesString;
    
}

- (NSRect)createColorSwatch{
    
    
}

@end