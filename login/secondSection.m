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
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return  self;
}
//-(UILabel *)label{
//    if (!_label) {
//        _label = [[UILabel alloc]init];
//    }
//    return _label;
//}
-(void)initLayout{
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.backgroundColor = [UIColor whiteColor];
    self.textLabel.textColor = [UIColor blackColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
