//
//  ColorsTableViewController.m
//  passDataBackSample
//
//  Created by Enterpi mini mac on 9/8/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

#import "ColorsTableViewController.h"

@interface ColorsTableViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *colorsTableView;
@property (strong, nonatomic) NSArray *colorsArray;

@end

@implementation ColorsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.colorsArray = @[@"Red",@"Green",@"Blue",@"Brown",@"Yellow"];
    
    [self.colorsTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"colorCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.colorsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *myCell = [self.colorsTableView dequeueReusableCellWithIdentifier:@"colorCell" forIndexPath:indexPath];
    
    UILabel *myTextLabel = [myCell.contentView viewWithTag:100];
    if(!myTextLabel)
    {
        myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, CGRectGetWidth(myCell.frame), CGRectGetHeight(myCell.frame))];
        myTextLabel.tag = 100;
    }
    myTextLabel.text = self.colorsArray[indexPath.row];
    [myCell.contentView addSubview:myTextLabel];
    return myCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     UITableViewCell *myCell = (UITableViewCell *)[self.colorsTableView cellForRowAtIndexPath:indexPath];
     UILabel *myTextLabel = [myCell.contentView viewWithTag:100];
    if(myTextLabel)
    {
        [_delegate sendColor:myTextLabel.text];
    }
    
    
    
}

@end
