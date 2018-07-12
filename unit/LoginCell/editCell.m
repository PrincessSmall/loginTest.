//
//  editCell.m
//  login
//
//  Created by 李敏 on 2018/7/12.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "editCell.h"
@interface editCell ()

@end

@implementation editCell

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
    [self.contentView addSubview:self.imageView];
    [self.contentView addSubview:self.fabiaoBtn];
    [self.contentView addSubview: self.fensiBtn];
    [self.contentView addSubview:self.guanzhuBtn];
    [self.contentView addSubview:self.editBtn];
    self.imaView.image = [UIImage imageNamed:@"cat1"];
    [self.fabiaoBtn setTitle:@"发表" forState:UIControlStateNormal];
    [self.fensiBtn setTitle:@"粉丝" forState:UIControlStateNormal];
    [self.guanzhuBtn setTitle:@"关注" forState:UIControlStateNormal];
    [self.editBtn setTitle:@"点击编辑资料" forState:UIControlStateNormal];
    [self.editBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
}
-(UIImageView *)imaView{
    if (!_imaView) {
        _imaView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 40, self.contentView.frame.size.height)];
        
    }
    return _imaView;
}
-(UIButton *)fabiaoBtn{
    if (!_fabiaoBtn) {
        _fabiaoBtn = [[UIButton alloc]initWithFrame:CGRectMake(125, 0, 40, self.contentView.frame.size.height*2.0/3.0)];
        [_fabiaoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _fabiaoBtn;
}
-(UIButton *)fensiBtn{
    if (!_fensiBtn) {
        _fensiBtn = [[UIButton alloc]initWithFrame:CGRectMake(215, 0, 40, self.contentView.frame.size.height*2.0/3.0)];
        [_fensiBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    }
    return _fensiBtn;
}
-(UIButton *)guanzhuBtn{
    if (!_guanzhuBtn) {
        _guanzhuBtn = [[UIButton alloc]initWithFrame:CGRectMake(305, 0, 40, self.contentView.frame.size.height*2.0/3.0)];
        [_guanzhuBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    }
    return _guanzhuBtn;
}
-(UIButton *)editBtn{
    if (!_editBtn) {
        _editBtn = [[UIButton alloc]initWithFrame:CGRectMake(125, self.contentView.frame.size.height*2.0/3.0, 220, self.contentView.frame.size.height/3.0)];
        [_editBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _editBtn.titleLabel.font = [UIFont systemFontOfSize:12.0];
    }
    return _editBtn;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
