//
//  secondSection.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "secondSection.h"
#import "LoginModel.h"

@interface secondSection ()
//@property (nonatomic,strong) UILabel * label;

@end

@implementation secondSection

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return  self;
}
- (void)setUpUI:(NSInteger)inter andModel:(LoginModel *)model{
    if (inter == 0) {
        self.textLabel.text = model.message;
    }else if (inter == 1){
        self.textLabel.text = model.personal;
    }else if (inter == 2){
        self.textLabel.text = model.myPulish;
    }else if (inter == 3){
        self.textLabel.text = model.myPacket;
    }else if (inter == 4){
        self.textLabel.text = model.suggest;
    }else if (inter == 5){
        self.textLabel.text = model.connect;
    }
}

-(void)initLayout{
//    实现cell上面文字居中
    self.textLabel.textAlignment = NSTextAlignmentCenter;
//    设置cell的背景颜色
    self.backgroundColor = [UIColor whiteColor];
//   设置cell的文字颜色
    self.textLabel.textColor = [UIColor blackColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
