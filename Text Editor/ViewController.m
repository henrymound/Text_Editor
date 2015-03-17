//
//  ViewController.m
//  Text Editor
//
//  Created by Henry O Mound on 3/16/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize mainField = _mainField, mainScroll = _mainScroll;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MAIN DEFINITIONS
    NSColor *BACKGROUND_COLOR = [NSColor darkGrayColor];
    NSColor *TEXT_COLOR = [NSColor whiteColor];
    double BORDER_WIDTH = 10.0;
    
    _mainScroll = [[NSScrollView alloc] initWithFrame:NSMakeRect(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];//Initiates main NSScrollFrame
    [_mainScroll setBackgroundColor:BACKGROUND_COLOR];//Sets the color of the background
    [_mainScroll setDrawsBackground:YES];//Makes the background visible
    [_mainScroll setFocusRingType:NSFocusRingTypeNone];

   
    _mainField = [[NSTextField alloc] initWithFrame:NSMakeRect(0.0 + BORDER_WIDTH, 0.0 + BORDER_WIDTH, [_mainScroll frame].size.width - BORDER_WIDTH*2, [_mainScroll frame].size.height - BORDER_WIDTH*2)];//Initiates main NSTextField frame with border
    [_mainField setBackgroundColor:BACKGROUND_COLOR];//Sets the color of the background
    [_mainField setTextColor:TEXT_COLOR];//Sets the color of the text input
    [_mainField setBordered:NO];
    [_mainField setDrawsBackground:YES];//Makes the background visible
    [_mainField setFocusRingType:NSFocusRingTypeNone];
    
    // Do any additional setup after loading the view.
    [self.view addSubview:_mainScroll];//Adds the NSScrollView
    [_mainScroll addSubview:_mainField];//Adds the NSTextField to the NSScrollView
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
