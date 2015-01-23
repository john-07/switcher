//
//  ViewController.m
//  TestSlider
//
//  Created by Evgeny Petrov on 23.01.15.
//  Copyright (c) 2015 Dashboard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISwitch *slider;
@property (strong, nonatomic) IBOutlet UILabel *title;

@end

@implementation ViewController

@synthesize slider,title;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)doSwitch:(BOOL)val{
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,val? @"On" : @"Off");
    title.text = val? @"On" : @"Off";
}

- (IBAction)onValueChanged:(UISwitch*)sender {
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,slider.on? @"On" : @"Off");
    BOOL on = sender.on;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self doSwitch:on];
    });
}
- (IBAction)onUpInside:(id)sender {
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,slider.on? @"On" : @"Off");
}
- (IBAction)onUpOutside:(id)sender {
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,slider.on? @"On" : @"Off");
}
- (IBAction)onTouchDown:(id)sender {
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,slider.on? @"On" : @"Off");
}
- (IBAction)onTouchCancel:(id)sender {
    NSLog(@"%s: %@",__PRETTY_FUNCTION__,slider.on? @"On" : @"Off");
}

@end
