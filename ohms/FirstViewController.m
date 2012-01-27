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
    // self.view.backgroundColor = [UIColor redColor];
    // What if I want to use a different background color not previously defined in the presets for the UIColor class?
    // Used UIColorFROMRGB Marcro provided by http://pessoal.org/blog/2008/11/27/creating-uicolor-objects-from-hex-values/
    // This Macro provide colors that match hex values
    // self.view.backgroundColor = UIColorFromRGB(0xFF00FF); // FF00FF is purple :-)
    
    
    // What if I want to add texture to the background?
    // Found the class property colorWithPatternImage
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"jack_finger.png"]]; 
    
    // self.view.backgroundColor = [UIColor redColor];
    
    
    //self.view.backgroundColor = [UIColor colorWithRed:0.1f green:0.5f blue:1.0f alpha:1.0f];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(150, 200, 100, 30);    
    [button setTitle:@"Calculate" forState:UIControlStateNormal];
    [self.view addSubview:button]; //retain count = 2, then eventually 1
    
    
    
    // ref count number of objects use another object
    
    /* another way
    UIColor *red = [UIColor redColor]; // auto-released memory!
    self.view.backgroundColor = red;  // ref count = 2
     // auto release automatically reduced ref count to 1
     */
    
    /*
    UIColor *red2 = [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];  // ref count = 1
    self.view.backgroundColor = red2; // ref count = 2
    [red2 release]; // ref count = 1
    */
    
    // every time you pass an object to another object the ref count goes
    
    // What if I want to resize that background image to match the dimentions of the screen?
    
    
    NSLog(@"FIRST VIEW CONTROLLER - viewDidLoad");

    headerLabel = [[UILabel alloc] init];
    headerLabel.text = @"Ohms Law Formula Calculator";
    headerLabel.textAlignment = UITextAlignmentCenter;
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.frame = CGRectMake(0, 15, 320, 30);
    [self.view addSubview:headerLabel];  //this command places the label on the screen

    
    // What if I want to dynamically position these elements on the screen
    // For example, what if I want to enter a message on top of the first input box and push everything down?
    
    
    UILabel *voltsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 200, 30)];
    voltsLabel.textAlignment = UITextAlignmentRight;
    voltsLabel.text = @"Volts";
    voltsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:voltsLabel];
    [voltsLabel release];

    UILabel *ohmsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 200, 30)];
    ohmsLabel.textAlignment = UITextAlignmentRight;
    ohmsLabel.text = @"Ohms";
    ohmsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ohmsLabel];
    [ohmsLabel release];
    
    UILabel *ampsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 200, 30)];
    ampsLabel.textAlignment = UITextAlignmentRight;
    ampsLabel.text = @"Amps";
    ampsLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ampsLabel];    
    [ampsLabel release];
    
    voltsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 80, 100, 30)];
    voltsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:voltsField];
    
    ohmsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 120, 100, 30)];
    ohmsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:ohmsField];

/*
    ampsField = [[UITextField alloc] initWithFrame:CGRectMake(210, 160, 100, 30)];
    ampsField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:ampsField];
*/
    ampAnswer = [[UILabel alloc] initWithFrame:CGRectMake(210, 160, 100, 30)];
    ampAnswer.backgroundColor = [UIColor clearColor];
    ampAnswer.text = @"?";
    [self.view addSubview:ampAnswer];
    
}

- (void)dealloc
{
    // prevent memory leak
    [ampAnswer release];
    [super dealloc];
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
