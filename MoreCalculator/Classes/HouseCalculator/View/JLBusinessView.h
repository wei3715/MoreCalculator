//
//  JLBusinessView.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLBusinessView : UIView

//@property (nonatomic ,strong)UIButton *yearButton;//贷款年限的按钮
//@property (nonatomic ,strong)UILabel *arrowLabel;//30年
@property (nonatomic ,strong)UISegmentedControl *nianxianSegmentCon;//贷款年限
@property (nonatomic ,strong)UIButton *syllbutton;//商业贷款利率的按钮
@property (nonatomic ,strong)UILabel *arrowsLabel;//4.75
@property (nonatomic ,strong)UIButton *pointButton;//买车后手头紧？点我看看
@property (nonatomic ,strong)UITextField *inputTextF;//请输入金额

@property (nonatomic ,strong)UILabel *moneyLabel;//月供金额
@property (nonatomic ,strong)UISegmentedControl *periodSegmentCon;

@end

NS_ASSUME_NONNULL_END
