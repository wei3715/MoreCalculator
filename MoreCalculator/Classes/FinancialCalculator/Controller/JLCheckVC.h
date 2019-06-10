//
//  JLCheckVC.h
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface JLCheckVC : BaseViewController

@property (nonatomic ,copy)NSString *benjinString;
@property (nonatomic ,copy)NSString *yuqishouyiString;
@property (nonatomic ,copy)NSString *qishuString;
@property (nonatomic ,copy)NSString *lixiString;
@property (nonatomic ,copy)NSString *nianhuaString;
@property (nonatomic ,copy)NSString *daoqishijianString;
@property (nonatomic ,strong)NSMutableArray *qishuArray;
@property (nonatomic ,strong)NSMutableArray *benjinArray;
@property (nonatomic ,strong)NSMutableArray *lixiArray;
@property (nonatomic ,strong)NSMutableArray *timeendArray;

@end

NS_ASSUME_NONNULL_END
