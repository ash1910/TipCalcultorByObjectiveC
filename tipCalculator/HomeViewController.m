//
//  HomeViewController.m
//  tipCalculator
//
//  Created by lab on 9/13/18.
//  Copyright © 2018 lab. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    defaultPercentage = 15;
    Totalamount = 0;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
}

-(void)dismissKeyboard {
    [_amount resignFirstResponder];
}

- (IBAction)amount:(UITextField *)sender {
    
    [self calculateTipValue];

}

- (IBAction)slider:(UISlider *)sender {
    
    [self calculateTipValue];
    
}


- (void) calculateTipValue{
    Totalamount = [_amount.text doubleValue];
    sliderPercentageValue = _slider.value;
    sliderPercentageValue = [[NSString stringWithFormat:@"%0.1f",(roundf(sliderPercentageValue * 2.0) * 0.5)] floatValue];
    
    double defaultTipV = Totalamount * (defaultPercentage/100);
    double defaultTotalV = Totalamount + defaultTipV;
    
    double sliderTipV = Totalamount * (sliderPercentageValue/100);
    double sliderTotalV = Totalamount + sliderTipV;
    
    _sliderPercentage.text = [NSString stringWithFormat:@"%.1lf%%", sliderPercentageValue];
    _sliderPercentageForTip.text = [NSString stringWithFormat:@"%.1lf%%", sliderPercentageValue];
    
    _defaultTipValue.text = [NSString stringWithFormat:@"%.2lf", defaultTipV];
    _defaultTotalValue.text = [NSString stringWithFormat:@"%.2lf", defaultTotalV];
    _sliderTipValue.text = [NSString stringWithFormat:@"%.2lf", sliderTipV];
    _totalTipValue.text = [NSString stringWithFormat:@"%.2lf", sliderTotalV];
    
}




@end
