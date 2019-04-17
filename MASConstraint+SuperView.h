//
//  MASConstraint+SuperView.h
//  
//
//  Created by xuker on 2019/4/2.
//  Copyright © 2019 xuker. All rights reserved.
//

#import <Masonry/Masonry.h>

NS_ASSUME_NONNULL_BEGIN

/** example:
 
     [view mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalToSuperview();
     }];
 
     注意：equalToSuperview(); block必须携带"()"!!!!!!
 */

///Masonry相对于父视图的约束
@interface MASConstraint (SuperView)

///相对于父视图的约束 block equal
- (MASConstraint *(^)(void))mas_equalToSuperview;
- (MASConstraint *(^)(void))equalToSuperview;

///相对于父视图的约束 block greaterThanOrEqual
- (MASConstraint *(^)(void))mas_greaterThanOrEqualToSuperview;
- (MASConstraint *(^)(void))greaterThanOrEqualToSuperview;

///相对于父视图的约束 block lessThanOrEqual
- (MASConstraint *(^)(void))mas_lessThanOrEqualToSuperview;
- (MASConstraint *(^)(void))lessThanOrEqualToSuperview;

@end

NS_ASSUME_NONNULL_END
