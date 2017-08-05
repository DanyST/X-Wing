//
//  LHLSecondViewController.m
//  Xwing
//
//  Created by Luis Herrera on 08-07-17.
//  Copyright © 2017 Luis Eduardo Herrera Lillo. All rights reserved.
//

#import "LHLSecondViewController.h"

@interface LHLSecondViewController ()

@end

@implementation LHLSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"will did load");

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSLog(@"will appear");

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
