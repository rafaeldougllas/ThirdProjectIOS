//
//  SecondViewController.h
//  ThirdProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic) NSArray * diasSemanaArray;
@property (nonatomic) NSDictionary * dict;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
