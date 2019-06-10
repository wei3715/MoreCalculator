//
//  JLHouseLoansModel.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLHouseLoansModel : NSObject

@property (nonatomic ,copy)NSString *max;//最高月供
@property (nonatomic ,copy)NSString *dijian;//每月递减
@property (nonatomic ,copy)NSString *lixi;//支付利息
@property (nonatomic ,copy)NSString *sum;//总还款额

@end

NS_ASSUME_NONNULL_END
