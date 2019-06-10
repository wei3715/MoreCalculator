//
//  JLCarLoansModel.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLCarLoansModel : NSObject

@property (nonatomic ,copy)NSString *shoufu_sum;//首期付款总额
@property (nonatomic ,copy)NSString *lixi;//支付利息
@property (nonatomic ,copy)NSString *meiyue;//每月还款额
@property (nonatomic ,copy)NSString *huankuan_sum;//总还款额

@end

NS_ASSUME_NONNULL_END
