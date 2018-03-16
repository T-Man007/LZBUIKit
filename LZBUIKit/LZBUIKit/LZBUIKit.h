//
//  LZBUIKit.h
//  LZBUIKit
//
//  Created by ZhaoBin Li on 2018/1/26.
//  Copyright © 2018年 ZhaoBin Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LZBUIKit : NSObject

#pragma mark - UILabel

+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;

+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment;



#pragma mark - UIButton

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;




#pragma mark - UIView

+ (UIView *)viewWithBgColor:(UIColor *)bgColor;

+ (UIView *)viewWithCornerRadius:(CGFloat)cornerRadius;

+ (UIView *)viewWithBgColor:(UIColor *)bgColor cornerRadius:(CGFloat)cornerRadius;

+ (UIView *)viewWithBgColor:(UIColor *)bgColor cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth;



#pragma mark - UIImageView

+ (UIImageView *)imageView;

+ (UIImageView *)imageViewWithImage:(UIImage *)image;

+ (UIImageView *)imageViewWithCornerRadius:(CGFloat)cornerRadius;

+ (UIImageView *)imageViewWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius;






#pragma mark - For UITextField

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont delegate:(id)delegate;

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont placeholder:(NSString *)placeholder delegate:(id)delegate;

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont cornerRadius:(CGFloat)cornerRadius placeholder:(NSString *)placeholder delegate:(id)delegate;

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont cornerRadius:(CGFloat)cornerRadius placeholder:(NSString *)placeholder delegate:(id)delegate secureTextEntry:(BOOL)secureTextEntry;




#pragma mark - For UITextView

+ (UITextView *)textViewWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment;





#pragma mark - For UITableView

+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style
                           separatorStyle:(CGFloat)separatorStyle;

@end
