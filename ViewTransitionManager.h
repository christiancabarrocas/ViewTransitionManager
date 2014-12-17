//
//  ViewTransitionManager.h
//
//  Created by Christian Cabarrocas on 16/12/14.
//

#import <Foundation/Foundation.h>

@interface ViewTransitionManager : NSObject <UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>

@property (nonatomic)       BOOL    isPresenting;

@end
