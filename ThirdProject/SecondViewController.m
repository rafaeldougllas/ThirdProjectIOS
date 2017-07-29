//
//  SecondViewController.m
//  ThirdProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomTableViewCell.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.diasSemanaArray = @[@"Segunda",@"Terça",@"Quarta",@"Quinta",@"Sexta",@"Sábado",@"Domingo"];
    
    self.diasSemanaArray = @[@{@"nome":@"rafael",@"email":@"rafael@gmail.com",@"pais":@"pais",@"rua":@"rua do Rafael"},@{@"nome":@"Juca",@"email":@"juca@gmail.com",@"pais":@"Brazil",@"rua":@"rua do Juca"},@{@"nome":@"Junior",@"email":@"junior@gmail.com",@"pais":@"Brasil",@"rua":@"rua do Juca"}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.diasSemanaArray.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    NSString * colorCell = @"whiteCell";
    //UIColor * colorFont = [UIColor ]
    
    if(indexPath.row == 1 || indexPath.row == 4){
        colorCell = @"redCell";
        //colorFont = @"white";
    }else if(indexPath.row == 2 || indexPath.row == 5){
        colorCell = @"blackCell";
        //colorFont = @"white";
    }
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:colorCell
//                                    forIndexPath:indexPath];
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"
                                                            forIndexPath:indexPath];
    cell.nomeLabel.text  = self.diasSemanaArray[indexPath.row][@"nome"];
    cell.emailLabel.text = self.diasSemanaArray[indexPath.row][@"email"];
    cell.paisLabel.text  = self.diasSemanaArray[indexPath.row][@"pais"];
    cell.ruaLabel.text   = self.diasSemanaArray[indexPath.row][@"rua"];
    
    
    //cell.textLabel.textColor = colorFont;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
