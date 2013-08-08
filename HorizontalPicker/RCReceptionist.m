//  The MIT License (MIT)
//  Copyright (c) 2013 <RABE_IT Services>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//
//
//  RCReceptionist.h
//

#import "RCReceptionist.h"

@interface RCReceptionist()
@property (nonatomic, weak  ) id                observedObject;
@property (nonatomic, copy  ) NSString          *observedKeyPath;
@property (nonatomic, strong) NSOperationQueue  *queue;
@property (nonatomic, copy  ) RCTaskBlock       task;
@end


@implementation RCReceptionist

+ (id)receptionistForKeyPath:(NSString *)path object:(id)obj queue:(NSOperationQueue *)queue task:(RCTaskBlock)task
{
    RCReceptionist *receptionist = [RCReceptionist new];
    receptionist.task = task;
    receptionist.observedKeyPath = path;
    receptionist.observedObject = obj;
    receptionist.queue = queue;
    
    [obj addObserver:receptionist forKeyPath:path options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:0];
    
    return receptionist;
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [self.queue addOperationWithBlock:^{
        if (self.task) self.task(keyPath, object, change);
    }];
}

@end