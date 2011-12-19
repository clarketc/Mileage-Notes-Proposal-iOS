//
//  ViewLogEntry.m
//  mileage
//
//  Created by Chris Clarke on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewLogEntry.h"
#import "MileageLog.h"

@implementation ViewLogEntry
@synthesize distance;
@synthesize oEnd;
@synthesize oStart;
@synthesize date;
@synthesize notes;
@synthesize managedObjectContext,fetchedResultsController,miles;

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
    NSLog(@"hello");
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setDistance:nil];
    [self setOEnd:nil];
    [self setOStart:nil];
    [self setDate:nil];
    date = nil;
    oStart = nil;
    oEnd = nil;
    distance = nil;
    notes = nil;
    [self setNotes:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
