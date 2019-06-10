//
//  JLPayMoneyModel.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLPayMoneyModel : NSObject

@property (nonatomic ,copy)NSString *qishu;//期数
@property (nonatomic ,copy)NSString *benjin;//本金
@property (nonatomic ,copy)NSString *lixi;//lixi
@property (nonatomic ,copy)NSString *time_end;//还款时间

@end

NS_ASSUME_NONNULL_END
