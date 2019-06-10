//
//  JLBankFinancingView.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLBankFinancingView : UIView

@property (nonatomic ,strong)UITextField *inputTextField;//请输入金额
@property (nonatomic ,strong)UIButton *yearButton;//存款期限的按钮
@property (nonatomic ,strong)UILabel *yearLabel;//年限
@property (nonatomic ,strong)UILabel *zeroLabel;//利率
@property (nonatomic ,strong)UIButton *myButton;//我要理财赚收益
@property (nonatomic ,strong)UILabel *theAmountLabel;//利息(元) 金额
@property (nonatomic ,strong)UILabel *theAmountOfLabel;//本息(元) 金额
@property (nonatomic ,strong)UISegmentedControl *periodSegmentCon;//活期 和 定期

@end

NS_ASSUME_NONNULL_END
