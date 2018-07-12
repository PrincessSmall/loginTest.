//
//  messageVC.h
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^newBlock)(NSString *);

@interface messageVC : UIViewController
@property (nonatomic , strong)NSString * str;
@property (nonatomic , copy)newBlock block;
- (void)text:(newBlock)block;
@end
