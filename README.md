ViewTransitionManager
=====================

Manager for creating animations between view controllers.
This example creates a crossDisolve like transition. For custom animations, override animateTransition method.
Usage

1)
Create @property of ViewTransitionManager in the class responsable for starting the animation.
@property (nonatomic, strong)           ViewTransitionManager       *transitionView;

Init the property in the viewDidLoad
self.transitionView = [[ViewTransitionManager alloc]init];


2) Set the transitioningDelegate of the second view controller to the created property
secondViewController.transitioningDelegate = self.transitionView;

Set the presentationstyle to custom
secondViewController.modalPresentationStyle = UIModalPresentationCustom;

3) Present the secondViewController with the desired method ( push, present, etc..)
