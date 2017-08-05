//
//  LHLXwingViewController.m
//  Xwing
//
//  Created by Luis Herrera on 08-07-17.
//  Copyright © 2017 Luis Eduardo Herrera Lillo. All rights reserved.
//

#import "LHLXwingViewController.h"
#import "LHLSecondViewController.h"
@import QuartzCore;

@interface LHLXwingViewController ()

@end

@implementation LHLXwingViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    self.title = @"Star Wars x-Wing";
    self.edgesForExtendedLayout = UIRectEdgeNone;

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(userDidTap:)];
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(userDidDoubleTap:)];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(userDidSwipe:)];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(userDidPan:)];
    
    doubleTap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tap];
    [self.view addGestureRecognizer:doubleTap];
    [self.view addGestureRecognizer:swipe];
    [self.view addGestureRecognizer:pan];
    
    [tap requireGestureRecognizerToFail:doubleTap];
    
    self.trooperView.layer.cornerRadius = 65;
    self.trooperView.clipsToBounds = YES;
}

#pragma mark - IBActions
- (IBAction)goToSecond:(id)sender {
    
    [self.navigationController pushViewController:[LHLSecondViewController new] animated:YES];
}

#pragma mark - Gesture Recognizers

-(void)userDidPan:(UIPanGestureRecognizer *)pan{
    if (pan.state == UIGestureRecognizerStateChanged) {
        CGPoint newCenter = [pan locationInView:self.spaceView];
        static CGFloat angle;
        
        [UIView animateWithDuration:3
                              delay:0
             usingSpringWithDamping:0.8
              initialSpringVelocity:0.8
                            options:0
                         animations:^{
                             angle += M_PI;
                             self.trooperView.center = newCenter;
                             self.trooperView.transform = CGAffineTransformMakeRotation(angle);
                         } completion:nil];
    }
}

-(void)userDidSwipe:(UISwipeGestureRecognizer *)swipe{
    if (swipe.state == UIGestureRecognizerStateRecognized) {
        static CGFloat angle = 0;
        
        [UIView animateWithDuration:6
                              delay:0
             usingSpringWithDamping:0.2
              initialSpringVelocity:0.8
                            options:0
                         animations:^{
                                angle += M_PI_2;
                                self.xswingView.transform = CGAffineTransformMakeRotation(angle);
                            } completion:nil];
    }
    
   
}

-(void)userDidDoubleTap:(UITapGestureRecognizer *)doubleTap{
    
    if (doubleTap.state == UIGestureRecognizerStateRecognized) {
        CGPoint newCenter = [doubleTap locationInView:self.spaceView];
        CGFloat alpha = 0.0f;
        
        [UIView animateWithDuration:1
                              delay:0
                            options:0
                         animations:^{
                             self.xswingView.center = newCenter;
                             self.xswingView.alpha = alpha;
                         } completion:^(BOOL finished) {
                             self.xswingView.alpha = 1.0f;
                         }];
    }
    
    
}

-(void)userDidTap: (UITapGestureRecognizer *)tap{
    if (tap.state == UIGestureRecognizerStateRecognized) {
        CGPoint newCenter = [tap locationInView:self.spaceView];
        
        UIViewAnimationOptions options = 0;
        
        [UIView animateWithDuration:1
                              delay:0
                            options:options
                         animations:^{
                             self.xswingView.center = newCenter;
                         } completion:^(BOOL finished) {
                             //
                         }];
        
        [UIView animateWithDuration:0.5
                              delay:0
                            options:options
                         animations:^{
                             self.xswingView.transform = CGAffineTransformMakeRotation(M_PI_2);
                         } completion:^(BOOL finished) {
                             
                             [UIView animateWithDuration:0.5
                                                   delay:0
                                                 options:options
                                              animations:^{
                                                  self.xswingView.transform = CGAffineTransformIdentity;
                                              } completion:nil];
                         }];

    }
    
}


@end
