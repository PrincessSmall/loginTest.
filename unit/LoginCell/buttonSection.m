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
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return self;
}
-(void)initLayout{
    [self.contentView addSubview:self.leftBtn];
    [self.contentView addSubview:self.rightBtn];
    [self.leftBtn setTitle:@"好友聊天" forState:UIControlStateNormal];
    [self.rightBtn setTitle:@"我的提问" forState:UIControlStateNormal];
}
-(UIButton *)leftBtn{
    if (!_leftBtn) {
        _leftBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width/2.0, self.contentView.frame.size.height)];
        [_leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _leftBtn;
}
-(UIButton *)rightBtn{
    if (!_rightBtn) {
        _rightBtn = [[UIButton alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2.0, 0, [[UIScreen mainScreen]bounds].size.width/2.0, self.contentView.frame.size.height)];
        [_rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _rightBtn;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
