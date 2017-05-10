//
//  ViewController.h
//  Task2
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*{
    IBOutlet UITextField *_firstName;
    IBOutlet UITextField *_lastName;
    IBOutlet UILabel *_helloName;
}*/
@property (retain, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (retain, nonatomic) IBOutlet UILabel *LastNameLabel;
@property (retain, nonatomic) IBOutlet UITextField *firstNameField;
@property (retain, nonatomic) IBOutlet UITextField *lastNameField;
@property (retain, nonatomic) IBOutlet UILabel *helloNameLabel;

- (IBAction)helloHere:(id)sender;

@end

