//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation CRViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)scheduleReminderFor10Seconds:(id)sender {
    
    NSDate *alertTime = [[NSDate date] dateByAddingTimeInterval:10];
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    if (localNotification) {
        localNotification.fireDate = alertTime;
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.repeatInterval = 0;
        localNotification.soundName = @"bell_tree.mp3";
        localNotification.alertBody = @"This is a local notification for 10 seconds";
        localNotification.applicationIconBadgeNumber = 1;
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    }
}

- (IBAction)scheduleReminderForDatePicker:(id)sender {
        
    UILocalNotification* localNotification2 = [[UILocalNotification alloc] init];
    if (localNotification2) {
        localNotification2.fireDate = self.datePicker.date;
        localNotification2.timeZone = [NSTimeZone defaultTimeZone];
        localNotification2.repeatInterval = 0;
        localNotification2.soundName = @"bell_tree.mp3";
        localNotification2.alertBody = @"This is a local date notification";
        localNotification2.applicationIconBadgeNumber = 1;
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification2];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
