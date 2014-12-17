//
//  ViewTransitionManager.h
//  Shootr
//
//  Created by Christian Cabarrocas on 16/12/14.
//  Copyright (c) 2014 Fav24. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewTransitionManager : NSObject <UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>

@property (nonatomic)       BOOL    isPresenting;

@end
