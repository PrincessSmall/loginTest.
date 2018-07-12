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

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UINavigationControllerDelegate>

@end
@implementation ViewController
//登录界面有三种cell，这边标记标识符
static NSString * cell1 = @"imageCell";
static NSString * cell2 = @"nomalCell";
static NSString * cell3 = @"butttonCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.loginVC];
//    注册三种cell
    [self.loginVC registerClass:[imageCell class] forCellReuseIdentifier:cell1];
    [self.loginVC registerClass:[secondSection class] forCellReuseIdentifier:cell2];
    [self.loginVC registerClass:[buttonSection class] forCellReuseIdentifier:cell3];
}
//懒加载tableview，实现委托协议
-(UITableView *)loginVC{
    if (!_loginVC) {
        _loginVC = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
//        设置tableview背景色，分界线样式，
        _loginVC.backgroundColor = [UIColor whiteColor];
        _loginVC.separatorStyle = UITableViewCellSeparatorStyleNone;
        _loginVC.delegate = self;
        _loginVC.dataSource = self;
//        调整section中间的距离
        _loginVC.sectionHeaderHeight = 5.0;
    }
    return _loginVC;
}
//懒加载声明的属性
-(NSString *)nicheng{
    if (!_nicheng) {
        _nicheng = [[NSString alloc]init];
    }
    return _nicheng;
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
//    第一组，使用了自定义的imageCell，我在这里实现的赋值
    if (indexPath.section == 0)
    {
        imageCell * cell = [tableView dequeueReusableCellWithIdentifier:cell1];
        if (indexPath.row == 0) {
            cell.headerImage.image = [UIImage imageNamed:@"cat1"];
            cell.nichenLabel.text = @"Min";
            self.nicheng = cell.nichenLabel.text;
//            NSLog(@"%@",self.nicheng);
        }
         return cell;
    }
//    第二组使用了自定义的secondSection，
    else if (indexPath.section == 1)
    {
//        查找是否有已经生成的cell，有则直接使用，没有则创建新的
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
        if (indexPath.row == 0) {
//            设置cell的textLabel属性
            cell.textLabel.text = @"....";
        }
        return cell;
    }
//    第三组使用自定义的buttonSection，
    else if (indexPath.section == 2)
    {
//        查找是否有生成的cell可用，若没有则重新创建
        buttonSection * cell = [tableView dequeueReusableCellWithIdentifier:cell3];
//        设置button上的文字
        [cell.leftBtn setTitle:@"好友聊天" forState:UIControlStateNormal];
        [cell.rightBtn setTitle:@"我的提问" forState:UIControlStateNormal];
        return cell;
    }
//    第四组使用自定义的sectondSection
    else if (indexPath.section == 3)
    {
//        查找是否有生成的cell可以使用，若没有则重新创建
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
//        分组设置cell
        if (indexPath.row == 0) {
            cell.textLabel.text = @"消息通知";
        }else if (indexPath.row == 1){
            cell.textLabel.text = @"个人主页";
        }else if (indexPath.row == 2){
            cell.textLabel.text = @"我的发表";
        }else if (indexPath.row == 3){
            cell.textLabel.text = @"我的钱包";
        }else if (indexPath.row == 4){
            cell.textLabel.text = @"意见反馈";
        }else if (indexPath.row == 5){
            cell.textLabel.text = @"联系客服";
        }
        return cell;
    }
//    第五组使用自定义的secondSection
    else if (indexPath.section == 4){
//          查找是否有生成的cell可以使用，若没有则重新创建
        secondSection * cell = [tableView dequeueReusableCellWithIdentifier:cell2];
//        设置cell上的值
        cell.textLabel.text = @"设置";
        return cell;
    }
//    需要返回，不然报错
    else return nil;
}
//设置row的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 136.0;
    }
//    这里应该自适应输入的签名，稍后优化
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
//            实例化需要跳转的界面
            messageVC * meVC = [[messageVC alloc]init];
//            使用navigationController的push方法实现跳转
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
