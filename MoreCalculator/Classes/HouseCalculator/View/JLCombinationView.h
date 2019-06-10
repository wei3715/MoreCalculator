//
//  JLCombinationView.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLCombinationView : UIView

//@property (nonatomic ,strong)UIButton *zuhearrowButton;//年限
@property (nonatomic ,strong)UISegmentedControl *zhnianxianSegmentCon;//贷款年限
@property (nonatomic ,strong)UIButton *zuhesyLilvButton;//商业利率
@property (nonatomic ,strong)UIButton *zuhejjlilvButton;//公积金利率
//@property (nonatomic ,strong)UILabel *zuhearrowLabel;//贷款年限
@property (nonatomic ,strong)UILabel *zuhearrowsLabel;//商业贷款利率
@property (nonatomic ,strong)UILabel *zuhearrowsLabels;//公积金贷款利率
@property (nonatomic ,strong)UITextField *zuhesyinputTextF;//商业贷款金额
@property (nonatomic ,strong)UITextField *zuhejjinputsTextF;//公积金贷款金额
@property (nonatomic ,strong)UILabel *zuhemoneyLabel;//月供金额
@property (nonatomic ,strong)UISegmentedControl *zuheperiodSegmentCon;//等额本息等额本金

@end

NS_ASSUME_NONNULL_END
