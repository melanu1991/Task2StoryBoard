//
//  ViewController.m
//  Task2
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHello:(id)sender {
    NSString *text = [NSString stringWithFormat:@"%@ %@",_firstName.text, _lastName.text];
    UIAlertView *showHello = [[UIAlertView alloc] initWithTitle:@"Hello" message:text delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [showHello show];
    [showHello release];
}

-(void)dealloc{
    [_firstName release];
    [_lastName release];
    [super dealloc];
}

@end
