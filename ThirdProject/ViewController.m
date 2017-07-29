//
//  ViewController.m
//  ThirdProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.btnAlert.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeValue:(UISlider *)sender {
    self.numberLabel.text = [NSString stringWithFormat:@"%i",(int)sender.value];
}

- (IBAction)showBtnAlert:(UISegmentedControl *)sender {
    if(sender.selectedSegmentIndex == 0){
        self.btnAlert.hidden = YES;
    }else{
        self.btnAlert.hidden = NO;
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return YES;
}


@end
