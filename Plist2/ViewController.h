//
//  ViewController.h
//  Plist2
//
//  Created by BSA univ 8 on 03/06/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) NSDictionary * names;
@property(nonatomic, strong) NSString * plistPath;



@property (nonatomic,strong) PlistManager *plistobj;
@end
