//
//  buttonSection.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "buttonSection.h"
@interface buttonSection ()
//@property (nonatomic,strong) UIButton * leftBtn;
//@property (nonatomic,strong) UIButton * rightBtn;
@end

@implementation buttonSection

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//自定义cell需要实现的方法
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return self;
}
//初始化子视图
-(void)initLayout{
//    添加两个button控件到cell上面
    [self.contentView addSubview:self.leftBtn];
    [self.contentView addSubview:self.rightBtn];
}
//懒加载leftBtn
-(UIButton *)leftBtn{
    if (!_leftBtn) {
        _leftBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width/2.0, self.contentView.frame.size.height)];
//        设置button上的文字颜色属性
        [_leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _leftBtn;
}
//懒加载rightBtn
-(UIButton *)rightBtn{
    if (!_rightBtn) {
        _rightBtn = [[UIButton alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2.0, 0, [[UIScreen mainScreen]bounds].size.width/2.0, self.contentView.frame.size.height)];
//        设置button上的文字颜色属性
        [_rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _rightBtn;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
