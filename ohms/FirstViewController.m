//
//  FirstViewController.m
//  ohms
//
//  Created by Jack Shultz on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"FIRST VIEW CONTROLLER - viewDidLoad");

    headerLabel = [[UILabel alloc] init];
    headerLabel.text = @"Ohms Law Formula Calculator";
    headerLabel.textAlignment =UITextAlignmentCenter;
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.frame = CGRectMake(0, 15, 320, 30);
    [self.view addSubview:headerLabel];  //this command places the label on the screen
    
    UILabel *voltsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 200, 30)];
    voltsLabel.textAlignment = UITextAlignmentRight;
    voltsLabel.text = @"Volts";
    voltsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:voltsLabel];

    UILabel *ohmsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 200, 30)];
    ohmsLabel.textAlignment = UITextAlignmentRight;
    ohmsLabel.text = @"Ohms";
    ohmsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ohmsLabel];
    
    UILabel *ampsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 200, 30)];
    ampsLabel.textAlignment = UITextAlignmentRight;
    ampsLabel.text = @"Amps";
    ampsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ampsLabel];    
    
    voltsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 80, 100, 30)];
    voltsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:voltsField];
    
    ohmsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 120, 100, 30)];
    ohmsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:ohmsField];
    
    ampsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 160, 100, 30)];
    ampsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:ampsField];
    

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

@end
