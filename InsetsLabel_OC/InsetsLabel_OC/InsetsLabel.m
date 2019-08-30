//
//  InsetsLabel.m
//  InsetsLabel_OC
//
//  Created by 李新新 on 2016/10/19.
//  Copyright © 2016年 LucioLee. All rights reserved.
//

#import "InsetsLabel.h"


IB_DESIGNABLE
@implementation InsetsLabel

@dynamic topInset,leftInset,bottomInset,rightInset;

- (instancetype)initWithInsets:(UIEdgeInsets)insets {
    return [self initWithFrame:CGRectZero insets:insets];
}
- (instancetype)initWithFrame:(CGRect)frame insets:(UIEdgeInsets)insets {
    if (self = [super initWithFrame:frame]) {
        self.insets = insets;
        return self;
    }
    return nil;
}
- (CGFloat)topInset {
    return _insets.top;
}
- (void)setTopInset:(CGFloat)topInset {
    UIEdgeInsets newInsets = UIEdgeInsetsMake(topInset, _insets.left, _insets.bottom, _insets.right);
    self.insets = newInsets;
}
- (CGFloat)leftInset {
    return _insets.left;
}
- (void)setLeftInset:(CGFloat)leftInset {
    UIEdgeInsets newInsets = UIEdgeInsetsMake(_insets.top, leftInset, _insets.bottom, _insets.right);
    self.insets = newInsets;
}
- (CGFloat)bottomInset {
    return _insets.bottom;
}
- (void)setBottomInset:(CGFloat)bottomInset {
    UIEdgeInsets newInsets = UIEdgeInsetsMake(_insets.top, _insets.left, bottomInset, _insets.right);
    self.insets = newInsets;
}
- (CGFloat)rightInset {
    return _insets.bottom;
}
- (void)setRightInset:(CGFloat)rightInset {
    UIEdgeInsets newInsets = UIEdgeInsetsMake(_insets.top, _insets.left, _insets.bottom, rightInset);
    self.insets = newInsets;
}
- (CGSize)intrinsicContentSize {
    CGSize originSize = [super intrinsicContentSize];
    CGSize newSize = CGSizeMake(originSize.width + _insets.left + _insets.right, originSize.height + _insets.top + _insets.bottom);
    return newSize;
}
- (void)setInsets:(UIEdgeInsets)insets {
    _insets = insets;
    [self invalidateIntrinsicContentSize];
}
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    return [super textRectForBounds: UIEdgeInsetsInsetRect(bounds, _insets) limitedToNumberOfLines: numberOfLines];
}
- (void)drawRect:(CGRect)rect {
    [super drawTextInRect: UIEdgeInsetsInsetRect(rect, _insets)];
}

@end
