//
//  ViewLog.h
//  mileage
//
//  Created by Chris Clarke on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewLogEntry.h"

#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

#import "MileageLog.h"


@interface ViewLog : UIViewController <UITableViewDataSource, UITableViewDelegate,MFMailComposeViewControllerDelegate>{   
    
    NSManagedObjectContext *managedObjectContext;
	NSFetchedResultsController *fetchedResultsController;    
    NSMutableArray *logArray; 
    IBOutlet UITableView *logTable;
    IBOutlet ViewLogEntry *logEntry;
    UILabel *primaryLabel;
    UILabel *secondaryLabel;
    MileageLog *mil;
    IBOutlet UIBarButtonItem *editButton;
    IBOutlet UIBarButtonItem *emailButton;
}

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSMutableArray *logArray;
@property (nonatomic, retain) IBOutlet UITableView *logTable;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *editButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *emailButton;
@property (nonatomic, retain) IBOutlet ViewLogEntry *logEntry;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property(nonatomic,retain)UILabel *primaryLabel;
@property(nonatomic,retain)UILabel *secondaryLabel;

- (void) fetchRecords;
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
- (IBAction) EditTable:(id)sender;
- (IBAction) emailTable:(id)sender;

@end
