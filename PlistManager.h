//
//  PlistManager.h
//  Plist2
//
//  Created by BSA univ 8 on 03/06/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistManager : NSObject


@property(nonatomic, strong) NSString * plistPath,*level1,*level2;
@property(nonatomic,strong) NSArray * fulldata,*array1,*array2,*sectiontitles;

@property(nonatomic,strong)NSMutableArray * newsarray;

 

-(void)ReadAppPlist;



@end
