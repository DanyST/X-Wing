//
//  LHLXwingViewController.h
//  Xwing
//
//  Created by Luis Herrera on 08-07-17.
//  Copyright © 2017 Luis Eduardo Herrera Lillo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LHLXwingViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *spaceView;
@property (nonatomic, weak) IBOutlet UIImageView *xswingView;
@property (nonatomic, weak) IBOutlet UIImageView *trooperView;
- (IBAction)goToSecond:(id)sender;

@end
