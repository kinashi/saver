//
//  testView.m
//  test
//
//  Created by Yuta Kinashi on 2015/08/31.
//  Copyright (c) 2015年 Yuta Kinashi. All rights reserved.
//

#import "testView.h"

@implementation testView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        //[self setAnimationTimeInterval:1/30.0];
        webView = [[WebView alloc] initWithFrame:[self bounds] frameName:nil groupName:nil];
        [webView setDrawsBackground:NO];
        [webView setMainFrameURL:[NSString stringWithFormat:@"file://%@/index.html", [[NSBundle bundleForClass:[self class]] resourcePath]]];
        [self addSubview:webView];
        
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
