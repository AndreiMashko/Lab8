//
//  ViewController.h
//  Task2
//
//  Created by fpmi on 26.05.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)segment:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *regV;
@property (weak, nonatomic) IBOutlet UITextField *loginL;
@property (weak, nonatomic) IBOutlet UITextField *passL;
- (IBAction)buttonL:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *loginR;
@property (weak, nonatomic) IBOutlet UITextField *emailR;
@property (weak, nonatomic) IBOutlet UITextField *passR;
@property (weak, nonatomic) IBOutlet UITextField *rePassR;
@property (weak, nonatomic) IBOutlet UISwitch *switchR;
- (IBAction)switch:(id)sender;
- (IBAction)buttonR:(id)sender;

@end

