//
//  JLMoreFoundCell.m
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import "JLMoreFoundCell.h"

@implementation JLMoreFoundCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        _threeLabel = [[UILabel alloc]initWithFrame:CGRectMake(20*BOScreenW/750, 0, 500*BOScreenW/750, 100*BOScreenH/1334)];
        _threeLabel.textColor = [UIColor colorWithRed:115.0/255 green:115.0/255 blue:115.0/255 alpha:1];
        _threeLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_threeLabel];
        
        _arrowImage = [[UIImageView alloc]initWithFrame:CGRectMake(BOScreenW - 35*BOScreenW/750, 35*BOScreenH/1334, 15*BOScreenW/750, 30*BOScreenH/1334)];
        _arrowImage.image = [UIImage imageNamed:@"common_goto"];
        [self.contentView addSubview:_arrowImage];
        
        _versionNumberLabel = [[UILabel alloc]initWithFrame:CGRectMake(BOScreenW-220*BOScreenW/750, 0, 200*BOScreenW/750, 100*BOScreenH/1334)];
        _versionNumberLabel.textColor = [UIColor colorWithRed:115.0/255 green:115.0/255 blue:115.0/255 alpha:1];
        _versionNumberLabel.font = [UIFont systemFontOfSize:14];
        _versionNumberLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:_versionNumberLabel];
        
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 99*BOScreenH/1334, BOScreenW, 1*BOScreenH/1334)];
        lineView.backgroundColor = mainLineColor;
        [self.contentView addSubview:lineView];
    }
    return self;
}

@end
