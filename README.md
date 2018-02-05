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