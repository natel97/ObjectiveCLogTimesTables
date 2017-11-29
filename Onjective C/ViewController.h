//
//  ViewController.h
//  Onjective C
//
//  Created by Nate on 9/8/17.
//  Copyright © 2017 Nate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *BeginA;
@property (weak, nonatomic) IBOutlet UITextField *EndA;
@property (weak, nonatomic) IBOutlet UITextField *BeginB;
@property (weak, nonatomic) IBOutlet UITextField *EndB;
@property (weak, nonatomic) IBOutlet UILabel *output;
@property int bA;
@property int eA;
@property int bB;
@property int eB;


@end

