//
//  JLDatePickerView.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLDatePickerView : UIView

@property (nonatomic ,strong)UIView *buttonViews;//确定 取消 按钮
@property (nonatomic ,strong)UIButton *cancelButtons;//取消按钮
@property (nonatomic ,strong)UILabel *titleLabel;//中间标题
@property (nonatomic ,strong)UIButton *sureButtons;//确定按钮
@property (nonatomic ,strong)UIDatePicker *JLDatePickerView;

@end

NS_ASSUME_NONNULL_END
