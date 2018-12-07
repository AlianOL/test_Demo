//
//  Dashline.h
//  line
//
//  Created by aurorac on 2017/2/22.
//  Copyright © 2017年 xiaomaolv. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface Dashline : UIView
{
    NSInteger _lineLength;
    NSInteger _lineSpacing;
    UIColor *_lineColor;
    CGFloat _height;
}
@property (assign, nonatomic)NSInteger linesLength;
@property (assign, nonatomic) NSInteger linesSpacing;
@property (assign, nonatomic) CGFloat heights;
@property (strong, nonatomic) UIColor *linesColor;

- (instancetype)initWithFrame:(CGRect)frame withLineLength:(NSInteger)lineLength withLineSpacing:(NSInteger)lineSpacing withLineColor:(UIColor *)lineColor;
- (void)drawBegin;
@end
