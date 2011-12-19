//
//  Settings.h
//  mileage
//
//  Created by Chris Clarke on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MileageLog.h"

@interface Settings : UIViewController <UIAlertViewDelegate>{
    NSManagedObjectContext *managedObjectContext;
}
- (IBAction)deleteAllButton:(id)sender;
- (IBAction)linkGoogleButton:(id)sender;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@end
