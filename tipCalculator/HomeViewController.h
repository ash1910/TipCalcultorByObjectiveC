//
//  HomeViewController.h
//  tipCalculator
//
//  Created by lab on 9/13/18.
//  Copyright © 2018 lab. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController<UITextViewDelegate>{
    
    float defaultPercentage;
    float sliderPercentageValue;
    double Totalamount;
    
}

@property (weak, nonatomic) IBOutlet UILabel *sliderPercentage;
@property (weak, nonatomic) IBOutlet UILabel *defaultTotalValue;
@property (weak, nonatomic) IBOutlet UILabel *sliderPercentageForTip;
@property (weak, nonatomic) IBOutlet UILabel *sliderTipValue;
@property (weak, nonatomic) IBOutlet UILabel *totalTipValue;
@property (weak, nonatomic) IBOutlet UITextField *amount;
@property (weak, nonatomic) IBOutlet UILabel *defaultTipValue;
@property (weak, nonatomic) IBOutlet UISlider *slider;


@end

NS_ASSUME_NONNULL_END
