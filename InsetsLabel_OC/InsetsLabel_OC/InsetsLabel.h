//
//  InsetsLabel.h
//  InsetsLabel_OC
//
//  Created by 李新新 on 2016/10/19.
//  Copyright © 2016年 LucioLee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface InsetsLabel : UILabel
    
@property (nonatomic, assign) UIEdgeInsets insets;
@property (nonatomic, assign) IBInspectable CGFloat topInset;
@property (nonatomic, assign) IBInspectable CGFloat leftInset;
@property (nonatomic, assign) IBInspectable CGFloat bottomInset;
@property (nonatomic, assign) IBInspectable CGFloat rightInset;
    
- (instancetype)initWithInsets:(UIEdgeInsets)insets;
- (instancetype)initWithFrame:(CGRect)frame insets:(UIEdgeInsets)insets;

@end
NS_ASSUME_NONNULL_END
