//
//  JLAccumulationView.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLAccumulationView : UIView

//@property (nonatomic ,strong)UIButton *jijinNianbutton;//贷款年限
@property (nonatomic ,strong)UISegmentedControl *jjnianxianSegmentCon;//贷款年限
@property (nonatomic ,strong)UIButton *jijinlilvbutton;//贷款利率
@property (nonatomic ,strong)UITextField *jijininputTextF;////请输入金额
//@property (nonatomic ,strong)UILabel *jijinarrowLabel;//5年
@property (nonatomic ,strong)UILabel *jijinarrowsLabel;//2.75
@property (nonatomic ,strong)UISegmentedControl *jijinperiodSegmentCon;//等额本息等额本金
@property (nonatomic ,strong)UILabel *jijinmoneyLabel;//月供金额
@property (nonatomic ,strong)UIButton *pointButtonsss;//买车后手头紧？点我看看

@end

NS_ASSUME_NONNULL_END
