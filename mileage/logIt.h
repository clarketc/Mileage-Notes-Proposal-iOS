//
//  logIt.h
//  mileage
//
//  Created by Chris Clarke on 11/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "ViewLog.h"

@interface logIt : UIViewController <UITextFieldDelegate,UITextViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource>{    
    NSManagedObjectContext *managedObjectContext;
    UIDatePicker *picker;
	UIBarButtonItem *doneButton;	// this button appears only when the date picker is open
	NSArray *dataArray;
	NSDateFormatter *dateFormatter;  
    UITextView *activeField;
    BOOL keyboardShown;
    BOOL viewMoved;
    IBOutlet UIBarButtonItem *saveButton;
    ViewLog *viewLogTable;
    
    
}

-(IBAction) sButton:(id)sender;

@property (nonatomic, retain) IBOutlet UITextField *dateInput;
@property (nonatomic, retain) IBOutlet UITextField *oStartInput;
@property (nonatomic, retain) IBOutlet UITextField *oEndInput;
@property (nonatomic, retain) IBOutlet UITextView *notesInput;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) NSMutableArray *logArray;
@property (nonatomic, retain) UIDatePicker *picker;
@property (nonatomic, retain) UIBarButtonItem *doneButton;
@property (nonatomic, retain) NSArray *dataArray; 
@property (nonatomic, retain) NSDateFormatter *dateFormatter; 

- (NSURL *)applicationDocumentsDirectory;

@end
