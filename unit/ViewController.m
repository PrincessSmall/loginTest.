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
#import "LoginModel/LoginModel.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UINavigationControllerDelegate>
@property (nonatomic , strong) LoginModel * loginModel;
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
    
    self.loginModel.message = @"message";
    self.loginModel.personal = @"personal";
    self.loginModel.myPulish = @"myPublish";
    self.loginModel.myPacket = @"myPacket";
    self.loginModel.suggest = @"suggest";
    self.loginModel.connect = @"connect";
}
- (LoginModel *)loginModel{
    if (!_loginModel) {
        _loginModel = [[LoginModel alloc]init];
    }
    return _loginModel;
}
-(UITableView *)loginVC{
    if (!_loginVC) {
        _loginVC = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
        _loginVC.backgroundColor = [UIColor whiteColor];
        _loginVC.separatorStyle = UITableViewCellSeparatorStyleNone;
        _loginVC.delegate = self;
        _loginVC.dataSource = self;
        _loginVC.sectionHeaderHeight = 5.0;
        _loginVC.sectionFooterHeight = 1.0;
    }
    return _loginVC;
}
//UITableViewDataSource的方法，返回分组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}
//返回行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return section == 3 ? 6 : 1;
    
}
//返回cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0)
    {
        imageCell * cell = [tableView dequeueReusableCellWithIdentifier:cell1];
        cell.headerImage.image = [UIImage imageNamed:@"cat1"];
        cell.nichenLabel.text = @"Min";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
         return cell;
    }
    else if (indexPath.section == 1)
    {
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        cell.textLabel.text = @"....";
        return cell;
    }
    else if (indexPath.section == 2)
    {
        buttonSection * cell = [tableView dequeueReusableCellWithIdentifier:cell3];
        return cell;
    }
    else if (indexPath.section == 3)
    {
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        [cell setUpUI:indexPath.row andModel:self.loginModel];
         cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else if (indexPath.section == 4){
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        cell.textLabel.text = @"设置";
        return cell;
    }
    else return nil;
}
//设置row的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 136.0;
    }
    else if (indexPath.section == 1){
        return 46.0;
    }
    else if (indexPath.section == 2){
        return 46;
    }
    else if (indexPath.section == 3){
        return 46;
    }else
        return 46;
}
//响应点击cell事件的方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            messageVC * meVC = [[messageVC alloc]init];
            meVC.block = ^(NSString * str) {
                NSLog(@"---%@",str);
            } ;
            meVC.str = self.loginModel.suggest;
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
