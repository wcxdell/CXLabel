//
//  CXLabel.m
//  pregnant-information
//
//  Created by wcxdell on 16/1/14.
//  Copyright © 2016年 wcxdell. All rights reserved.
//

#import "CXLabel.h"

@implementation CXLabel

-(void)setWithString:(NSString*)str fontSize:(NSInteger)size fontColor:(UIColor*)color lineSpace:(NSInteger) lineSpace breakMode:(NSLineBreakMode)linebreak{
    NSRange range = NSMakeRange(0, str.length);
    NSMutableAttributedString * attributeString = [[NSMutableAttributedString alloc] initWithString:str attributes:nil];
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    paragraphStyle.lineBreakMode = linebreak;
    [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    [attributeString addAttribute:NSBaselineOffsetAttributeName value:@0 range:range];
    [attributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:size] range:NSMakeRange(0, str.length)];
    [attributeString addAttribute:NSForegroundColorAttributeName value:color range:range];
    self.attributedText = attributeString;
}

-(void)calculateFrameWithMaxSize:(CGSize)rect{
    self.size = [self.attributedText boundingRectWithSize:rect options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
}
@end