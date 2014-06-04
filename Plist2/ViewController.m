//
//  ViewController.m
//  Plist2
//
//  Created by BSA univ 8 on 03/06/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "ViewController.h"

#import "PlistManager.h"

@class PlistManager;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad

{
    _plistobj = [[PlistManager alloc]init];
    [_plistobj ReadAppPlist];
  
//    _fullDatacopy=[[NSArray alloc]init];
//    _plistobj=[[PlistManager alloc]init];
//   _fullDatacopy =[_plistobj ReadAppPlist];
//
 NSLog(@"COMBINE %@ ",_plistobj.newsarray.description);
    
NSLog(@"====%@",[_plistobj.array1 description]);
//    
//   // _plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
//  //  NSMutableDictionary *  propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:_plistPath];
//   // _fullData = [propertyDict allKeys];
//
//   // NSLog(@"%@",_fullData);

    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_plistobj.array1 count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [_plistobj.array1 objectAtIndex:indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
