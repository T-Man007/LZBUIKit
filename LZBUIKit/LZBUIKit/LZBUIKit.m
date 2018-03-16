//
//  LZBUIKit.m
//  LZBUIKit
//
//  Created by ZhaoBin Li on 2018/1/26.
//  Copyright © 2018年 ZhaoBin Li. All rights reserved.
//

#import "LZBUIKit.h"

@implementation LZBUIKit

#pragma mark - UILabel
+(UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize
{
  return [self labelWithTextColor:textColor fontSize:fontSize textAlignment:NSTextAlignmentLeft];
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    [label setFont:[UIFont systemFontOfSize:fontSize]];
    return label;
}


#pragma mark - UIButton
+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:Nil fontSize:fontSize titleColor:titleColor cornerRadius:0 borderColor:Nil borderWidth:0 normalImage:Nil selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:Nil fontSize:fontSize titleColor:titleColor cornerRadius:0 borderColor:Nil borderWidth:0 normalImage:normalImage selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:Nil fontSize:fontSize titleColor:titleColor cornerRadius:0 borderColor:Nil borderWidth:0 normalImage:normalImage selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithFontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:Nil fontSize:fontSize titleColor:titleColor cornerRadius:cornerRadius borderColor:Nil borderWidth:0 normalImage:normalImage selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title fontSize:fontSize titleColor:titleColor cornerRadius:0 borderColor:Nil borderWidth:0 normalImage:Nil selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title fontSize:fontSize titleColor:titleColor cornerRadius:cornerRadius borderColor:Nil borderWidth:0 normalImage:Nil selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title fontSize:fontSize titleColor:titleColor cornerRadius:cornerRadius borderColor:Nil borderWidth:0 normalImage:normalImage selectedImage:Nil target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title fontSize:fontSize titleColor:titleColor cornerRadius:cornerRadius borderColor:Nil borderWidth:0 normalImage:normalImage selectedImage:selectedImage target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action
{
    UIButton *button = [[UIButton alloc] init];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    if (cornerRadius>0) {
        button.layer.cornerRadius = cornerRadius;
    }
    if (borderWidth>0) {
        button.layer.borderWidth = borderWidth;
    }
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.layer.borderColor = borderColor.CGColor;
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:selectedImage forState:UIControlStateSelected];
    return button;
}


#pragma mark - UIView
+ (UIView *)viewWithBgColor:(UIColor *)bgColor
{
    return [self viewWithBgColor:bgColor cornerRadius:0 borderColor:Nil borderWidth:0];
}

+ (UIView *)viewWithCornerRadius:(CGFloat)cornerRadius
{
    return [self viewWithBgColor:Nil cornerRadius:cornerRadius borderColor:Nil borderWidth:0];
}

+ (UIView *)viewWithBgColor:(UIColor *)bgColor cornerRadius:(CGFloat)cornerRadius
{
    return [self viewWithBgColor:bgColor cornerRadius:cornerRadius borderColor:Nil borderWidth:0];
}

+ (UIView *)viewWithBgColor:(UIColor *)bgColor cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = bgColor;
    if (cornerRadius>0) {
    view.layer.cornerRadius = cornerRadius;
    }
    view.layer.borderColor = borderColor.CGColor;
    if (borderWidth>0) {
    view.layer.borderWidth = borderWidth;
    }
    return view;
}


#pragma mark - UIImageView
+ (UIImageView *)imageView
{
    return [self imageViewWithImage:Nil cornerRadius:0];
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image
{
    return [self imageViewWithImage:Nil cornerRadius:0];
}

+ (UIImageView *)imageViewWithCornerRadius:(CGFloat)cornerRadius
{
    return [self imageViewWithImage:Nil cornerRadius:cornerRadius];
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    if (cornerRadius>0) {
        imageView.layer.cornerRadius = cornerRadius;
    }
    return imageView;
}

#pragma mark - UITextFileld

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont delegate:(id)delegate
{
    return [self textFieldWithTextColor:textColor textFont:textFont cornerRadius:0 placeholder:Nil delegate:delegate secureTextEntry:NO];
}

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont placeholder:(NSString *)placeholder delegate:(id)delegate
{
    return [self textFieldWithTextColor:textColor textFont:textFont cornerRadius:0 placeholder:placeholder delegate:delegate secureTextEntry:NO];
}

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont cornerRadius:(CGFloat)cornerRadius placeholder:(NSString *)placeholder delegate:(id)delegate
{
    return [self textFieldWithTextColor:textColor textFont:textFont cornerRadius:cornerRadius placeholder:placeholder delegate:delegate secureTextEntry:NO];
}

+ (UITextField *)textFieldWithTextColor:(UIColor *)textColor textFont:(CGFloat)textFont cornerRadius:(CGFloat)cornerRadius placeholder:(NSString *)placeholder delegate:(id)delegate secureTextEntry:(BOOL)secureTextEntry
{
    UITextField *textField = [[UITextField alloc] init];
    textField.font = [UIFont systemFontOfSize:textFont];
    textField.placeholder = placeholder;
    textField.textColor = textColor;
    textField.delegate = delegate;
    textField.secureTextEntry = secureTextEntry;
    if (cornerRadius>0) {
        textField.layer.cornerRadius = cornerRadius;
    }
    return textField;
}

#pragma mark - UITextView
+ (UITextView *)textViewWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment
{
    UITextView *textView = [UITextView new];
    textView.textColor = textColor;
    textView.font = [UIFont systemFontOfSize:fontSize];
    textView.textAlignment = textAlignment;
    return textView;
}


#pragma mark - UITableView
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(CGFloat)separatorStyle
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.separatorStyle = separatorStyle;
    return tableView;
}
@end
