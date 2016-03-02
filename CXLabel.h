//
//  CXLabel.h
//  pregnant-information
//
//  Created by wcxdell on 16/1/14.
//  Copyright © 2016年 wcxdell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CXLabel : UILabel
@property (assign, nonatomic) CGSize size;
-(void)setWithString:(NSString*)str fontSize:(NSInteger)size fontColor:(UIColor*)color lineSpace:(NSInteger) lineSpace breakMode:(NSLineBreakMode)linebreak;
-(void)calculateFrameWithMaxSize:(CGSize) rect;
@end
