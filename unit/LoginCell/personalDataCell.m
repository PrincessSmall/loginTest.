//
//  personalDataCell.m
//  login
//
//  Created by 李敏 on 2018/7/12.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "personalDataCell.h"
@interface personalDataCell ()
@property (nonatomic,strong) UILabel * label;
@end
@implementation personalDataCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return self;
}
-(void)initLayout{
    [self.contentView addSubview:self.label];
}
-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(180, 0, [[UIScreen mainScreen]bounds].size.width-180, self.contentView.frame.size.height)];
        
    }
    return _label;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
