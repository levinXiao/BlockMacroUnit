中文文档请移步 [中文文档](http://www.xiaoyu666.com/2018/02/05/BlockMarcoUnit%20@weakify%20@strongify%20%E4%B8%80%E4%B8%AA%E5%BF%AB%E9%80%9F%E9%98%B2%E6%AD%A2%20block%20retain%20cycle%20%E7%9A%84%E5%BC%80%E6%BA%90%20marco/)

# BlockMacroUnit
RAC block @weakify & @strongify easy to use


## Why use BlockMacroUnit
BlockMacroUnit is a tool used for those non-RAC-support project.
RAC has a great feature (@weakify & @strongify) who will increase coding speed and experience.

## How to Use

if not use **BlockMacroUnit** you will code like this

```
__weak __typeof__(self) weakSelf = self;
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    __strong __typeof(self) strongSelf = weakSelf;
    
    [strongSelf doSomething];
    [strongSelf doOtherThing];
);
```

but after you import **BlockMacroUnit** , you can code like this

```
#import "BlockMarco.h"

@weakify(self)
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    @strongify(self)
    
    [self doSomething];
    [self doOtherThing];
});

```

#### thanks

if any question ,mail me please. email : xiaoamani@qq.com

