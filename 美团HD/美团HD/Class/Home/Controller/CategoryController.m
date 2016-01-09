//
//  CategoryController.m
//  美团HD
//
//  Created by Tengfei on 16/1/8.
//  Copyright © 2016年 tengfei. All rights reserved.
//

#import "CategoryController.h"
#import "TFHomeDropdown.h"
#import "UIView+Extension.h"
#import "MJExtension.h"
#import "TFCategory.h"

@interface CategoryController ()

@end

@implementation CategoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //加载分类数据
//    NSString *file = [[NSBundle mainBundle]pathForResource:@"categories.plist" ofType:nil];
//    NSArray *dictArray = [NSArray arrayWithContentsOfFile:file];
//    NSArray *categories = [TFCategory objectArrayWithKeyValuesArray:dictArray];
    NSArray *categories = [TFCategory objectArrayWithFilename:@"categories.plist"];
    
    TFHomeDropdown *dropdown = [TFHomeDropdown dropDown];
    [self.view addSubview:dropdown];
    dropdown.frame = self.view.bounds;
    dropdown.categories = categories;
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
