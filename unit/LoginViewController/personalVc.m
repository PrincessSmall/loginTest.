//
//  personalVc.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "personalVc.h"
#import "personalDataCell.h"
#import "editCell.h"
#import "ViewController.h"

@interface personalVc ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation personalVc
static NSString * cell1 = @"editCell";
static NSString * cell2 = @"nomallCell";
static NSString * cell3 = @"personalCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.personalTBV];
    [self.personalTBV registerClass:[editCell class] forCellReuseIdentifier:cell1];
    [self.personalTBV registerClass:[UITableViewCell class] forCellReuseIdentifier:cell2];
    [self.personalTBV registerClass:[personalDataCell class] forCellReuseIdentifier:cell3];
}
-(UITableView *)personalTBV{
    if (!_personalTBV) {
        _personalTBV = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
        _personalTBV.backgroundColor = [UIColor whiteColor];
        _personalTBV.delegate = self;
        _personalTBV.dataSource = self;
    }
    return _personalTBV;
}
//实现协议方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    else if (section == 1){
        return 2;
    }
    else
        return 8;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        editCell * cell = [tableView dequeueReusableCellWithIdentifier:cell1];
     
        return cell;
    }
    else if (indexPath.section == 1){
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        if (indexPath.row == 1) {
            cell.textLabel.text = @"我的资料";
            cell.textLabel.textAlignment = NSTextAlignmentCenter;
        }
        return cell;
    }
    else if (indexPath.section == 2){
        personalDataCell * cell = [tableView dequeueReusableCellWithIdentifier:cell3];
        if (indexPath.row == 0) {
            cell.textLabel.text = @"ID号";
        }else if (indexPath.row == 1){
            cell.textLabel.text = @"性别";
        }else if (indexPath.row == 2){
            cell.textLabel.text = @"职业";
        }else if (indexPath.row == 3){
            cell.textLabel.text = @"兴趣";
        }else if (indexPath.row == 4){
            cell.textLabel.text = @"现居地";
        }else if (indexPath.row == 5){
            cell.textLabel.text = @"生日";
        }else if (indexPath.row == 6){
            cell.textLabel.text = @"年龄";
        }else if (indexPath.row == 7){
            cell.textLabel.text = @"星座";
        }
        return cell;
    }
    else
        return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
