//
//  ViewController.m
//  Task2
//
//  Created by fpmi on 26.05.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_regV setHidden:YES];
    /*NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    
    if([user objectForKey:@"login"] !=nil || [user objectForKey:@"pass"]!=nil){
        [self performSegueWithIdentifier:@"closeZone" sender:self];
        
    }*/
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segment:(id)sender {
    UISegmentedControl *seg=(UISegmentedControl *) sender;
    NSInteger select=seg.selectedSegmentIndex;
    
    if(select==0){
        [_regV setHidden:YES];
    }else{
        [_regV setHidden:NO];
    }
}
- (IBAction)buttonL:(id)sender {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    if ([_loginL.text isEqualToString:(NSString*)[user objectForKey:@"login"]] && [_passL.text isEqualToString:(NSString*)[user objectForKey:@"pass"]])
    {
        [self performSegueWithIdentifier:@"closeZone" sender:self];
    }
}
- (IBAction)switch:(id)sender {
}
- (IBAction)buttonR:(id)sender {
    
    if (![_loginR.text isEqualToString:@""] && ![_passR.text isEqualToString:@""] && ![_emailR.text isEqualToString:@""] && [_passR.text isEqualToString:_rePassR.text] && [_switchR isOn])
    {
        NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
        [user setObject:_loginR.text forKey:@"login"];
        [user setObject:_passR.text forKey:@"pass"];
        //[self performSegueWithIdentifier:@"ClosedZone" sender:self];
    }
    
}
@end
