//
//  CVData.h
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//
//

#import <Cocoa/Cocoa.h>

@interface CVData : NSObject {
    
    
}

// Elements in the array.
// Setting up the accessor methods using the @property keyword.
// Using NSNumber in NSMutableArray uses objects and not literals like NSInteger.

@property (retain, nonatomic) NSString *colorName;
@property (retain, nonatomic) NSNumber *labD65_L;
@property (retain, nonatomic) NSNumber *labD65_a;
@property (retain, nonatomic) NSNumber *labD65_b;
@property (retain, nonatomic) NSNumber *labD50_L;
@property (retain, nonatomic) NSNumber *labD50_a;
@property (retain, nonatomic) NSNumber *labD50_b;
@property (retain, nonatomic) NSNumber *adobeRGB_R;
@property (retain, nonatomic) NSNumber *adobeRGB_G;
@property (retain, nonatomic) NSNumber *adobeRGB_B;
@property (retain, nonatomic) NSString *labD50Values;
@property (retain, nonatomic) NSString *adobeRGBValues;
@property (nonatomic) NSRect *colorSwatch;

// The array that will house the elements above.
@property (retain, nonatomic) NSArray *colorValueArray;


- (NSString *)createLabD50ValueswithLValue: (NSNumber *)L
                                 andAValue: (NSNumber *)a
                                 andBValue: (NSNumber *)b;
- (NSString *)createAdobeRGBValueswithRValue: (NSNumber *)R
                                   andGValue: (NSNumber *)G
                                   andBValue: (NSNumber *)B;
- (NSRect)createColorSwatch;

@end
