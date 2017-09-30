//
//  AutoHeigthTableViewController.m
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewModel.h"
#import "YuJinBaoCell.h"
#import "FoundationCell.h"


static NSString *YuJinBaoCellreuseIdentifier = @"YuJinBaoCell";
static NSString *FoundationCellIdentifier = @"FoundationCell";

@interface HomeViewController ()<YuJinBaoCellDelegate>
@property(nonatomic,strong)HomeViewModel *viewModel;
@end

@implementation HomeViewController

- (HomeViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[HomeViewModel alloc]init];
    }
    return _viewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    self.tableView.rowHeight = UITableViewAutomaticDimension;
//    self.tableView.estimatedRowHeight = 140;
    self.tableView.tableFooterView = [UIView new];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor orangeColor];
    [self.tableView registerClass:[YuJinBaoCell class] forCellReuseIdentifier:YuJinBaoCellreuseIdentifier];
    [self.tableView registerClass:[FoundationCell class] forCellReuseIdentifier:FoundationCellIdentifier];
    
    [[self.viewModel.publicOfferViewModel.publicOfferDataCommand execute:nil] subscribeNext:^(id  _Nullable x) {
        
    } completed:^{
        [self.tableView reloadData];
    }];
    
    [[self.viewModel.privateOfferViewModel.privateOfferDataCommand execute:nil] subscribeNext:^(id  _Nullable x) {
        
    } completed:^{
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return section == 0? 0 : 10;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headView = [[UIView alloc]init];
    headView.backgroundColor = [UIColor lightGrayColor];
    return headView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        YuJinBaoCell *cell = [tableView dequeueReusableCellWithIdentifier:YuJinBaoCellreuseIdentifier forIndexPath:indexPath];
        [self configureCell:cell AtIndexPath:indexPath];
        return cell;
    }else if (indexPath.section == 1) {
        FoundationCell *cell = [tableView dequeueReusableCellWithIdentifier:FoundationCellIdentifier ];
        [self configureCell:cell AtIndexPath:indexPath];
        return cell;
    }
    FoundationCell *cell = [tableView dequeueReusableCellWithIdentifier:FoundationCellIdentifier ];
    [self configureCell:cell AtIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(HomeBaseCell *)cell AtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        YuJinBaoCell *yuJinBaoCell = (YuJinBaoCell *)cell;
        yuJinBaoCell.yuJinBaoModel = [self.viewModel.yuJinBaoViewModel.yuJinBaoArr lastObject];
        yuJinBaoCell.headInfo = self.viewModel.yuJinBaoViewModel.headInfo;
        return;
    }else if (indexPath.section == 1){
        FoundationCell *foundationCell = (FoundationCell *)cell;
        foundationCell.foundationModel = [self.viewModel.publicOfferViewModel.publicOfferModels lastObject];
        foundationCell.headInfo = self.viewModel.publicOfferViewModel.headInfo;
        return;
    }
    FoundationCell *foundationCell = (FoundationCell *)cell;
    foundationCell.foundationModel = [self.viewModel.privateOfferViewModel.priviteOfferData lastObject];
    foundationCell.headInfo = self.viewModel.privateOfferViewModel.headInfo;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return [YuJinBaoCell hyb_heightForTableView:tableView config:^(UITableViewCell *sourceCell) {
            YuJinBaoCell *yuJinBaoCell = (YuJinBaoCell *)sourceCell;
            yuJinBaoCell.yuJinBaoModel = [self.viewModel.yuJinBaoViewModel.yuJinBaoArr lastObject];
            yuJinBaoCell.headInfo = self.viewModel.yuJinBaoViewModel.headInfo;
        } cache:nil];
    }else if (indexPath.section == 1){
        return [FoundationCell hyb_heightForTableView:tableView config:^(UITableViewCell *sourceCell) {
            FoundationCell *foundationCell = (FoundationCell *)sourceCell;
            foundationCell.foundationModel = [self.viewModel.publicOfferViewModel.publicOfferModels lastObject];
            foundationCell.headInfo = self.viewModel.publicOfferViewModel.headInfo;
        } cache:nil];
    }
    return [FoundationCell hyb_heightForTableView:tableView config:^(UITableViewCell *sourceCell) {
        FoundationCell *foundationCell = (FoundationCell *)sourceCell;
        foundationCell.foundationModel = [self.viewModel.privateOfferViewModel.priviteOfferData lastObject];
        foundationCell.headInfo = self.viewModel.privateOfferViewModel.headInfo;
    } cache:nil];
}

- (void)didSelectedYuJinBaoViewButton:(YuJinBaoCell *)yuJinBaoCell{
    NSLog(@"yuJinBaoCell");
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [tableView deselectRowAtIndexPath:indexPath animated:YES];
     NSLog(@"yuJinBaoCell");
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
