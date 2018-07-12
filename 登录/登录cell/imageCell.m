//
//  imageCell.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "imageCell.h"
@interface imageCell()
//@property (nonatomic,strong) UIImageView * headerImage;
//@property (nonatomic,strong) UILabel * nichenLabel;
@end

@implementation imageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//自定义cell初始化必写方法
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        初始化子试图
        [self initLayout];
    }
    return self;
}
//初始化子视图
-(void)initLayout{
    
    self.nichenLabel.textColor = [UIColor blackColor];
    self.nichenLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.headerImage];
    [self.contentView addSubview:self.nichenLabel];
}
//懒加载控件
-(UIImageView *)headerImage{
    if (!_headerImage) {
        _headerImage = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2.0-40,20,80, 90)];
    }
    return _headerImage;
}
//懒加载
-(UILabel *)nichenLabel{
    if (!_nichenLabel) {
        _nichenLabel = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2.0-20, 116,40, 20)];        
    }
    return _nichenLabel;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
