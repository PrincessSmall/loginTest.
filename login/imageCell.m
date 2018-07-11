//
//  imageCell.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "imageCell.h"
@interface imageCell()
//@property (nonatomic,strong) UIImageView * headerIma;
//@property (nonatomic,strong) UILabel * nichenLabel;
@end

@implementation imageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        初始化子试图
        [self initLayout];
    }
    return self;
}
-(UIImageView *)headerIma{
    if (!_headerIma) {
        _headerIma = [[UIImageView alloc]initWithFrame:CGRectMake(140,20,40, 40)];
    }
    return _headerIma;
}
-(UILabel *)nichenLabel{
    if (!_nichenLabel) {
        _nichenLabel = [[UILabel alloc]initWithFrame:CGRectMake(130, 60, 60, 30)];
    }
    return _nichenLabel;
}
-(void)initLayout{
    self.nichenLabel.textColor = [UIColor blackColor];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.headerIma];
    [self.contentView addSubview:self.nichenLabel];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
