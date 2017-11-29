//
//  ViewController.m
//  Onjective C
//
//  Created by Nate on 9/8/17.
//  Copyright © 2017 Nate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)SendToLog:(id)sender {
    NSMutableArray *myArray = [[NSMutableArray alloc]init];
    _bA =  [_BeginA.text intValue];
    _eA =  [_EndA.text intValue];
    _bB =  [_BeginB.text intValue];
    _eB =  [_EndB.text intValue];
    
    if (_eA < _bA || _eB < _bB){
        _output.text = [NSString stringWithFormat:(@"Please check input! %d %d %d %d"), _bA, _eA, _bB, _eB];
        return;
    }
    
    
    for(int x = _bA; x <= _eA; x++){
        [myArray addObject:[NSString stringWithFormat:(@"\n\n***Row containing %d * x***"), x]];
        for(int y = _bB; y <= _eB; y++){
            [myArray addObject:[NSString stringWithFormat:(@"%d * %d = %d"),x,y,x*y]];
        }
    }
   NSAlert *alert = [NSAlert alertWithMessageText: @"Results!"
                                     defaultButton:@"OK" alternateButton:@"Cancel"
                                       otherButton:nil informativeTextWithFormat:
                      @"Deleted records cannot be restored."];

    
    NSLog(@"%@",myArray.debugDescription);
    _output.text = @"Check the log for the magic!;\nReady to go again!";
    _bA = 0;
    _bB = 0;
    _eA = 0;
    _eB = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
