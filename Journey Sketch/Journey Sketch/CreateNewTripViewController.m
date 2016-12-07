//
//  CreateNewTripViewController.m
//  Journey Sketch
//
//  Created by 제갈수민 on 2016. 12. 7..
//  Copyright © 2016년 제갈수민. All rights reserved.
//

#import "CreateNewTripViewController.h"
#import "CoreDataClass.h"

@interface CreateNewTripViewController ()
@property CoreDataClass * coreData;
@end

@implementation CreateNewTripViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.coreData =  [[CoreDataClass alloc] init];
    // Do any additional setup after loading the view.
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.coreData createOneEntity:@"Trip"];
    [self.coreData createOneEntity:@"Date"];    
}

@end