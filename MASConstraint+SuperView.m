
//
//  MASConstraint+SuperView.m
//  
//
//  Created by xuker on 2019/4/2.
//  Copyright © 2019 xuker. All rights reserved.
//

#import "MASConstraint+SuperView.h"
#import <Masonry/MASConstraint+Private.h>
#import <Masonry/MASViewConstraint.h>

@implementation MASConstraint (SuperView)

#pragma mark - Public

- (MASConstraint * (^)(void))mas_equalToSuperview{
    return [self _commonFunction:NSLayoutRelationEqual];
}

///相对于父视图的约束
- (MASConstraint * (^)(void))equalToSuperview{
    return [self _commonFunction:NSLayoutRelationEqual];
}

- (MASConstraint *(^)(void))mas_greaterThanOrEqualToSuperview{
    return [self _commonFunction:NSLayoutRelationGreaterThanOrEqual];
}

- (MASConstraint *(^)(void))greaterThanOrEqualToSuperview{
    return [self _commonFunction:NSLayoutRelationGreaterThanOrEqual];
}

///相对于父视图的约束 lessThanOrEqual
- (MASConstraint *(^)(void))mas_lessThanOrEqualToSuperview{
    return [self _commonFunction:NSLayoutRelationLessThanOrEqual];
}

- (MASConstraint *(^)(void))lessThanOrEqualToSuperview{
    return [self _commonFunction:NSLayoutRelationLessThanOrEqual];
}

#pragma mark - Private

///通用方法
- (MASConstraint *(^)(void))_commonFunction:(NSLayoutRelation) relation{
    return ^id(void) {
        if ([self superView]) {
            return self.equalToWithRelation([self superView], relation);
        }
        ///获取superview失败
        return nil;
    };
}

- (UIView *)superView{
    ///MASViewConstraint
    if ([self isKindOfClass:[MASViewConstraint class]]) {
        MASViewConstraint *viewConstraint = (MASViewConstraint *)self;
        UIView *superView = viewConstraint.firstViewAttribute.view.superview;
        if (superView) {
            return superView;
        }
    }
    ///代理途径获取superview
    if ([self respondsToSelector:@selector(delegate)]) {
        id delegate = [self performSelector:@selector(delegate)];
        if (delegate && [delegate performSelector:@selector(view)]) {
            UIView *selfView = [delegate performSelector:@selector(view)];
            if (selfView.superview) {
                return selfView.superview;
            }
        }
    }
    @throw @"获取superview失败";
    return nil;
}

@end
