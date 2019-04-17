# masonry-superview
masonry+superview


# example:
`
  [view mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalToSuperview();
   }];
`

## 注意：equalToSuperview(); block必须携带"()"!!!!!!

# code


//Masonry相对于父视图的约束
@interface MASConstraint (SuperView)

//相对于父视图的约束 block equal
- (MASConstraint *(^)(void))mas_equalToSuperview;
- (MASConstraint *(^)(void))equalToSuperview;

//相对于父视图的约束 block greaterThanOrEqual
- (MASConstraint *(^)(void))mas_greaterThanOrEqualToSuperview;
- (MASConstraint *(^)(void))greaterThanOrEqualToSuperview;

//相对于父视图的约束 block lessThanOrEqual
- (MASConstraint *(^)(void))mas_lessThanOrEqualToSuperview;
- (MASConstraint *(^)(void))lessThanOrEqualToSuperview;

@end

