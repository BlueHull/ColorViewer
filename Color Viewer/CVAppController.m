//
//  CVAppController.m
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//

#import "CVAppController.h"
#import "CVData.h"

@implementation CVAppController

@synthesize colorNameDisplay = _colorNameDisplay;
@synthesize adobeRGBValuesDisplay = _adobeRGBValuesDisplay;
@synthesize colorSwatchDisplay = _colorSwatchDisplay;
@synthesize displayItems = _displayItems;

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
    
    // NSRect bounds = [NSRect bounds];
    [labD50Color set];
    // NSRectFill (bounds);
    
}

- (IBAction)searchUsingText:(NSSearchField *)sender {
}

- (IBAction)searchUsingColor:(NSColorWell *)sender {
}

- (IBAction)changeSearchResultSize:(NSSlider *)sender {
}

- (IBAction)changeSwatchSize:(NSSlider *)sender {
}

- (IBAction)showAdobeRGBValues:(NSButton *)sender {
}

- (IBAction)showColorNames:(NSButton *)sender {
}


// Custom methods to read files into memory during initialization.

- (void)createColorValueArrayFromPlist{
    
    // Read in existing color data from the plist file.
    // If data in plist is unreadable, throw up a warning that data is not usable.
    // If plist does not exist, pop up an Open dialog to look for a data set.
    
    // temp code to test the UI.
    // create an instance of CVData.
    CVData *colorData = [[CVData alloc] init];
    
    // assign values to ivars using setters.
    // Using dot syntax as setter [colorData setColorName:[NSString initWithString:@"purple"]]; was not working.
    // I used "colorData.colorName = @"test name"" previously to set colorName;
    
    [colorData setColorName:[[NSString alloc] initWithString:@"test name"]];
    [colorData setLabD65_L:[NSNumber numberWithLong:70]];
    [colorData setLabD65_a:[NSNumber numberWithLong:60]];
    [colorData setLabD65_b:[NSNumber numberWithLong:50]];
    [colorData setLabD50_L:[NSNumber numberWithLong:70]];
    [colorData setLabD50_a:[NSNumber numberWithLong:60]];
    [colorData setLabD50_b:[NSNumber numberWithLong:50]];
    [colorData setAdobeRGB_R:[NSNumber numberWithLong:40]];
    [colorData setAdobeRGB_G:[NSNumber numberWithLong:30]];
    [colorData setAdobeRGB_B:[NSNumber numberWithLong:20]];
    [colorData setLabD50Values:[[NSString alloc] initWithString:@"LabD50 Values"]];
    [colorData setAdobeRGBValues:[[NSString alloc] initWithString:@"AdobeRGB Values"]];
    // [colorData setColorSwatch:[NSRect initialize];
    
    
    // Make sure values were imported correctly.
    NSLog(@"colorName is: %@", colorData.colorName);
    NSLog(@"labD50_L is: %@", colorData.labD50_L);
    
    
    //
    // Plist parsing code here to populate a temporary mutable array.
    //
    
    // Load up a temporary array to store single entry's color values.
    NSMutableArray *tempArray = [[NSMutableArray alloc] initWithObjects:colorData.colorName, colorData.labD65_L, colorData.labD65_a, colorData.labD65_b, colorData.labD50_L, colorData.labD50_a, colorData.labD50_b, colorData.adobeRGB_R, colorData.adobeRGB_G, colorData.adobeRGB_B, colorData.labD50Values, colorData.adobeRGBValues, colorData.colorSwatch, nil];
    
    // Transfer these values to a mutable array that we can use to build the final array.
    colorData.colorValueArray = [[NSArray alloc] initWithArray:tempArray];
    
    // Create new Controller object to hold array.
    CVAppController *myAppController = [[CVAppController alloc] init];
    myAppController.displayItems = colorData.colorValueArray;
    
    NSLog(@"contents of colorValueArray are: %@", [colorData.colorValueArray objectAtIndex:3]);
    NSLog(@"contents of displayItemsArray are: %@", [myAppController.displayItems objectAtIndex:11]);
    
}

- (NSArray *)createColorValueArrayFromFile{
    
    // Read in color data from a file on disk.
    return NULL;
}

// X-Code method for reading in files that is part of template.
- (void)readFileFromDisk:(NSString *)file {
    
    // This methods was part of the project template.
    // Read file and enter into memory as an NSData object.
    
    NSString* filePath = @"path from Open menu item...";
    NSData* fileData = [NSData dataWithContentsOfFile:filePath];
    
    // Parse data and place in an array
    
}

// Array methods needed to be KVO (key-value observer) compliant.
/*
- (void)insertObject:(CVData *)p inColorValueArrayAtIndex:(NSUInteger)index {
    [colorValueArray insertObject:p atIndex:index];
}

- (void)removeObjectFromColorValueArrayAtIndex:(NSUInteger)index {
    [colorValueArray removeObjectAtIndex:index];
}

- (void)setColorValueArray:(NSMutableArray *)a {
    colorValueArray = a;
}

- (NSArray*)colorValueArray {
    return colorValueArray;
}
*/


@end
