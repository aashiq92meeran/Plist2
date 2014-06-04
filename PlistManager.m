//
//  PlistManager.m
//  Plist2
//
//  Created by BSA univ 8 on 03/06/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "PlistManager.h"


@implementation PlistManager
@synthesize plistPath,level1,level2,array2,array1;

-(void)ReadAppPlist
{
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];

    _fulldata = [propertyDict allKeys];
    
    NSDictionary *section1 = (NSDictionary *)[propertyDict objectForKey:@"Section 1"];
    
  level1=[section1 objectForKey:@"IOS"];

    
  array1 = [section1 objectForKey:@"Members"];
    
//    NSString *name = [level1 objectForKey:@"IOS"];
    
    NSDictionary *section2 = (NSDictionary *)[propertyDict objectForKey:@"Section 2"];
    
   level2 = [section2 objectForKey:@"Android"];

    
     array2 = [section2 objectForKey:@"Members"];
    
    _sectiontitles= [section1 allKeys];
    self.newsarray = [[array1 arrayByAddingObjectsFromArray:array2]mutableCopy];
    
    
     NSLog(@"%@",_fulldata);
    
     NSLog(@"level1 %@",level1);
    
     NSLog(@"level2 %@",level2);
    
   NSLog(@"level12 %@",array1);
    
   NSLog(@"level2 2%@",array2);
//    NSLog(@"%@",name);
    
    
}


@end
