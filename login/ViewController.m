//
//  ViewController.m
//  login
//
//  Created by 李敏 on 2018/7/11.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "ViewController.h"
#import "imageCell.h"
#import "secondSection.h"
#import "buttonSection.h"
#import "messageVC.h"
#import "personalVc.h"
#import "setUpVc.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView * loginVC;
@end
@implementation ViewController
static NSString * cell1 = @"imageCell";
static NSString * cell2 = @"nomalCell";
static NSString * cell3 = @"butttonCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.loginVC];
    [self.loginVC registerClass:[imageCell class] forCellReuseIdentifier:cell1];
    [self.loginVC registerClass:[secondSection class] forCellReuseIdentifier:cell2];
    [self.loginVC registerClass:[buttonSection class] forCellReuseIdentifier:cell3];
    
}
-(UITableView *)loginVC{
    if (!_loginVC) {
        _loginVC = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    }
    
    _loginVC.delegate = self;
    _loginVC.dataSource = self;
    return _loginVC;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return section == 4 ? 6:1;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            imageCell * cell = [tableView dequeueReusableCellWithIdentifier:cell1];
            cell.headerIma.image = [UIImage imageNamed:@"cat1"];
            cell.nichenLabel.text = @"Min";
            return cell;
        }
        
    }
    else if (indexPath.section == 1)
    {
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        if (indexPath.row == 0) {
            cell.textLabel.text = @"";
            return cell;
        }

    }
    else if (indexPath.section == 2)
    {
        buttonSection * cell = [tableView dequeueReusableCellWithIdentifier:cell3];
        [cell.leftBtn setTitle:@"好友聊天" forState:UIControlStateSelected];
        [cell.rightBtn setTitle:@"我的提问" forState:UIControlStateSelected];
        return cell;
    }

    else if (indexPath.section == 3)
    {
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        if (indexPath.row == 0) {
            cell.textLabel.text = @"消息通知";
            return cell;
        }else if (indexPath.row == 1){
            cell.textLabel.text = @"个人主页";
            return cell;
        }else if (indexPath.row == 2){
            cell.textLabel.text = @"我的发表";
            return cell;
        }else if (indexPath.row == 3){
            cell.textLabel.text = @"我的钱包";
            return cell;
        }else if (indexPath.row == 4){
            cell.textLabel.text = @"意见反馈";
            return cell;
        }else if (indexPath.row == 5){
            cell.textLabel.text = @"联系客服";
            return cell;
        }else{

        }return cell;
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            messageVC * meVC = [[messageVC alloc]init];
            [self.navigationController pushViewController:meVC animated:YES];
        }else if (indexPath.row == 1){
            personalVc * perVc = [[personalVc alloc]init];
            [self.navigationController pushViewController:perVc animated:YES];
        }
    }else if (indexPath.section == 4){
        if (indexPath.row == 0) {
            setUpVc * setVc = [[setUpVc alloc]init];
            [self.navigationController pushViewController:setVc animated:YES];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
