//
//  CNX_MainViewController.m
//  How2GoLite
//
//  Created by Thomas Dubiel on 20.09.12.
//  Copyright (c) 2012 Thomas Dubiel. All rights reserved.
//

#import "CNX_MainViewController.h"

@interface CNX_MainViewController ()

@end

@implementation CNX_MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(CNX_FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"] ||
        [[segue identifier] isEqualToString:@"showCharges"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

#pragma mark - Charges View
-(void)chargesViewControllerDidFinish:(CNX_ChargesViewController *)controller {
    [self dismissModalViewControllerAnimated:YES];
}

@end

