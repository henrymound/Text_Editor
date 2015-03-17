//
//  ViewController.h
//  Text Editor
//
//  Created by Henry O Mound on 3/16/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController{

    
    IBOutlet NSScrollView *mainScroll;
    IBOutlet NSTextField *mainField;

}

@property (strong) IBOutlet NSScrollView *mainScroll;
@property (strong) IBOutlet NSTextField *mainField;

@end

