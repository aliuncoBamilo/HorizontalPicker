//  The MIT License (MIT)
//  Copyright (c) 2011-2013 <RABE_IT Services>
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
//  HPLabel.h
//  HorizontalPicker
//
//  Created by Bernd Rabe on 18.04.13.
//  Copyright (c) 2011-2013 RABE_IT Services. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HPLabel : UILabel
/** Creates a normal UILabel object with a gradient on the right side
 */
+ (id)labelWithFrame:(CGRect)frame title:(NSString *)title font:(UIFont *)font tag:(NSInteger)tag;

@end