//
//  Settings.m
//  mileage
//
//  Created by Chris Clarke on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Settings.h"
#import "AppDelegate.h"

@implementation Settings
@synthesize managedObjectContext;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    id appDelegate = (id)[[UIApplication sharedApplication] delegate]; 
    managedObjectContext = [appDelegate managedObjectContext];
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"OK"])
    {
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Miles" inManagedObjectContext:managedObjectContext];
        [fetchRequest setEntity:entity];
        
        NSError *error;
        NSArray *items = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
        
        
        for (NSManagedObject *managedObject in items) {
            [managedObjectContext deleteObject:managedObject];
            NSLog(@"object deleted Miles");
        }
        if (![managedObjectContext save:&error]) {
            NSLog(@"Error deleting %@ - error:%",error);
        }
        
        id appDelegate = (id)[[UIApplication sharedApplication] delegate]; 
        [[super.tabBarController.viewControllers objectAtIndex:1] tabBarItem].badgeValue = [appDelegate getDistance];

    }
    else if([title isEqualToString:@"Cancel"])
    {
        return;
    }
}
- (IBAction)deleteAllButton:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Delete all logs" 
                                                    
                                                message:@"This deletes all data.  Are you sure? "
                                                   delegate:self 
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Cancel", nil];
    [alert show];
 
    return;

}

- (IBAction)linkGoogleButton:(id)sender {
}
@end
