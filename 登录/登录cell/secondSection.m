//
//  secondSection.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "secondSection.h"
@interface secondSection ()
//@property (nonatomic,strong) UILabel * label;

@end

@implementation secondSection

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//自定义cell实现的方法
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return  self;
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
