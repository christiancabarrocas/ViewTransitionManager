//
//  ViewTransitionManager.m
//
//  Created by Christian Cabarrocas on 16/12/14.
//

#import "ViewTransitionManager.h"

@implementation ViewTransitionManager

//------------------------------------------------------------------------------
-(id)init {
    self = [super init];
    if (self != nil) {
    }
    return self;
}

//------------------------------------------------------------------------------
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.3f;
}

//------------------------------------------------------------------------------
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {

    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    if (self.isPresenting) {

        [transitionContext.containerView addSubview:toViewController.view];

        fromViewController.view.alpha = 1.0;
        toViewController.view.alpha = 0.0;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fromViewController.view.alpha = 0.0;
            toViewController.view.alpha = 1.0;

        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
    else {

        fromViewController.view.alpha = 1.0;
        toViewController.view.alpha = 0.0;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fromViewController.view.alpha = 0.0;
            toViewController.view.alpha = 1.0;
            
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];

    }
}

//------------------------------------------------------------------------------
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    
    
    ViewTransitionManager *animator = [ViewTransitionManager new];
    animator.isPresenting = YES;
    return animator;
}

//------------------------------------------------------------------------------
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    ViewTransitionManager *animator = [ViewTransitionManager new];
    return animator;
}
@end
