//
//  JLP2PfinancialModel.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLP2PfinancialModel : NSObject

@property (nonatomic ,copy)NSString *lixi;//利息
@property (nonatomic ,copy)NSString *money;//投资金额
@property (nonatomic ,copy)NSString *yuqi;//预期收益
@property (nonatomic ,copy)NSString *shiji_apr;//实际年化
@property (nonatomic ,copy)NSString *time_end;//到期时间
@property (nonatomic ,strong)NSMutableArray *huankuan_list;//还款明细

@end

NS_ASSUME_NONNULL_END
