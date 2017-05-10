//
//  ViewController.m
//  Task2
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)helloHere:(id)sender {
    //    NSString *text = [NSString stringWithFormat:@"%@ %@",_firstName.text, _lastName.text];
    //    UIAlertView *showHello = [[UIAlertView alloc] initWithTitle:@"Hello" message:text delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    //    [showHello show];
    //    [showHello release];
    //    NSString *helloName = [NSString stringWithFormat:@"Name: %@ surname: %@ HELLO!!!", _firstName.text, _lastName.text];
    //    SecondViewController *svc = [[SecondViewController alloc]init];
    //    svc.helloName.text = helloName;
    //    [svc release];
    _helloNameLabel.text = [NSString stringWithFormat:@"Hello %@ %@", _firstNameField.text, _lastNameField.text];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showNewController"]) {
        SecondViewController *svc = segue.destinationViewController;
        svc.helloLabel.text = [NSString stringWithFormat:@"Hello %@ %@", self.firstNameField.text, self.lastNameField.text];
    }
    NSString *text = [NSString stringWithFormat:@"%@ %@",_firstNameField.text, _lastNameField.text];
    UIAlertView *showHello = [[UIAlertView alloc] initWithTitle:@"Hello" message:text delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [showHello show];
    [showHello release];
}

- (void)dealloc{
    [_firstNameLabel release];
    [_LastNameLabel release];
    [_firstNameField release];
    [_lastNameField release];
    [_helloNameLabel release];
    [super dealloc];
}

@end
