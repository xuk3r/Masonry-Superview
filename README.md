# masonry-superview !
masonry+superview

# usage
`
pod 'masonry+superview'
`
or
`
pod 'Masonry+ToSuperView'
`

# example:
`
  [view mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalToSuperview();
   }];
`

## 注意：equalToSuperview(); block必须携带"()"!!!!!!



# code

```
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
```

## 备注
Pod不支持修改大小写。。。masonry+superview无法改成 Masonry+Superview
可以使用masonry+superview或者Masonry+ToSuperView
