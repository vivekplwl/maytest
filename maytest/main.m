/*
 Erica Sadun, http://ericasadun.com
 iPhone Developer's Cookbook, 5.x Edition
 BSD License, Use at your own risk
 */

#import <UIKit/UIKit.h>

#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
#define BARBUTTON(TITLE, SELECTOR) 	[[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR]


@interface MyController : UIViewController
@end

@implementation MyController
- (void) rightAction: (id) sender
{
    self.title = @"Pressed Right";
}

- (void) leftAction: (id) sender
{
    self.title = @"Pressed Left";
}

- (void) loadView
{
    [super loadView];
   // self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.tintColor = COOKBOOK_PURPLE_COLOR;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake( 40, 50,54,29);
    [button setBackgroundColor:[UIColor redColor]];
    //[button setBackgroundImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backmethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    //    UIBarButtonItem *barButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:button] autorelease];
    // self.navigationItem.rightBarButtonItem = BARBUTTON(@"Right", @selector (rightAction:));
    // self.navigationItem.leftBarButtonItem = BARBUTTON(@"Left", @selector(leftAction:));
}
@end



@interface TestBedViewController : UIViewController
@end

@implementation TestBedViewController
- (void) rightAction: (id) sender
{
    self.title = @"Pressed Right";
    MyController *mv;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        mv=[[MyController alloc]initWithNibName:@"newxib" bundle:nil];
        
    } else {
        mv=[[MyController alloc]initWithNibName:@"padxib" bundle:nil];
        
    }
    
    
   
    [self.navigationController pushViewController:mv animated:YES];
    
}


- (void) leftAction: (id) sender
{
    self.title = @"Pressed Left";
}

- (void) loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.tintColor = COOKBOOK_PURPLE_COLOR;
    
    
    // this is test
    // this is test
    // this is test for us
    
    //mytesting
    //metesting
    //they testing
    
     UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake( 40, 50,54,29);
    [button setBackgroundColor:[UIColor redColor]];
    //[button setBackgroundImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backmethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
//    UIBarButtonItem *barButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:button] autorelease];
    self.navigationItem.rightBarButtonItem = BARBUTTON(@"Right", @selector (rightAction:));
   // self.navigationItem.leftBarButtonItem = BARBUTTON(@"Left", @selector(leftAction:));
}
@end





#pragma mark -

#pragma mark Application Setup
@interface TestBedAppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow *window;
}
@end

@implementation TestBedAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
   
  // [application  setStatusBarHidden:YES];

    window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds ]];

    TestBedViewController *ttt=[[TestBedViewController alloc] init];
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:ttt];
    
    window.rootViewController =nav;
    [window makeKeyAndVisible];
    return YES;
    
    
    //   window =[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen   ] bounds]];
//   TestBedViewController *tvvc=[[TestBedViewController alloc]init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tvvc];
//    window.rootViewController = nav;
//	[window makeKeyAndVisible];
//    return YES;
}
@end


//int main(int argc, char *argv[]) {
//    @autoreleasepool {
//        int retVal = UIApplicationMain(argc, argv, nil, @"TestBedAppDelegate");
//        return retVal;
//    }
//    
//    
//}



//@implementation TestBedAppDelegate
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
//{	
//    [application setStatusBarHidden:YES];
//	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//	TestBedViewController *tbvc = [[TestBedViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tbvc];
//    window.rootViewController = nav;
//	[window makeKeyAndVisible];
//    return YES;
//}
//@end

 
int main(int argc, char *argv[]) {
    @autoreleasepool {
        int retVal = UIApplicationMain(argc, argv, nil, @"TestBedAppDelegate");
        return retVal;
    }
}