//
//  AppDelegate.h
//  Color Viewer
//
//  Created by Peter Constable on 9/30/12.
//  Copyright (c) 2012 Blue Hull Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

// Properties supplied in the X-Code AppDelegate template.
@property (assign) IBOutlet NSWindow *window;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
