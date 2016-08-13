//
//  CVAppController.h
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CVData.h"

@interface CVAppController : NSObject {
    
    
}
@property (assign) IBOutlet NSTextField *colorNameDisplay;

@property (assign) IBOutlet NSTextField *adobeRGBValuesDisplay;

@property (assign) IBOutlet NSView *colorSwatchDisplay;

@property (assign) NSArray *displayItems;


- (IBAction)searchUsingText:(NSSearchField *)sender;

- (IBAction)searchUsingColor:(NSColorWell *)sender;

- (IBAction)changeSearchResultSize:(NSSlider *)sender;

- (IBAction)changeSwatchSize:(NSSlider *)sender;

- (IBAction)showAdobeRGBValues:(NSButton *)sender;

- (IBAction)showColorNames:(NSButton *)sender;

// Custom methods to read in data during initialization.
- (void)createColorValueArrayFromPlist;
- (NSArray *)createColorValueArrayFromFile;

// File read method that is part of X-Code template.
- (void)readFileFromDisk:(NSString *)file;


// Array methods needed to be KVO (key-value observer) compliant.
/*
- (void)insertObject:(CVData *)p colorValueArrayAtIndex:(NSUInteger)index;

- (void)removeObjectFromColorValueArrayAtIndex:(NSUInteger)index;

- (void)setColorValueArray:(NSArray *)a;

- (NSArray *)colorValueArray;
*/

@end
