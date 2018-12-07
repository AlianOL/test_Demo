//
//  Dashline.m
//  line
//
//  Created by aurorac on 2017/2/22.
//  Copyright © 2017年 xiaomaolv. All rights reserved.
//

#import "Dashline.h"

@implementation Dashline

- (instancetype)initWithFrame:(CGRect)frame withLineLength:(NSInteger)lineLength withLineSpacing:(NSInteger)lineSpacing withLineColor:(UIColor *)lineColor{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _lineLength = lineLength;
        _lineSpacing = lineSpacing;
        _lineColor = lineColor;
        _height = frame.size.height;
    }
    return self;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawBegin{
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetLineWidth(context,1);
    CGContextSetStrokeColorWithColor(context, self.linesColor.CGColor);
    CGFloat lengths[] = {self.linesLength,self.linesSpacing};
    CGContextSetLineDash(context, 0, lengths,2);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0,self.heights);
    CGContextStrokePath(context);
    CGContextClosePath(context);
    
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetLineWidth(context,1);
    CGContextSetStrokeColorWithColor(context, _lineColor.CGColor);
    CGFloat lengths[] = {_lineLength,_lineSpacing};
    CGContextSetLineDash(context, 0, lengths,2);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0,_height);
    CGContextStrokePath(context);
    CGContextClosePath(context);
}
#pragma mark - getter setter
-(void)setLinesColor:(UIColor *)linesColor {
    _linesColor = linesColor;
}
-(void)setHeights:(CGFloat)heights {
    _heights = heights;
}
-(void)setLinesLength:(NSInteger)linesLength {
    _linesLength = linesLength;
}
-(void)setLinesSpacing:(NSInteger)linesSpacing {
    _lineSpacing = linesSpacing;
}
@end
