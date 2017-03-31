//
//  AppDelegate.m
//  crash
//
//  Created by tztddong on 2016/11/29.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 将下面C函数的函数地址当做参数
    NSSetUncaughtExceptionHandler(&UncaughtExceptionHandler);
    return YES;
}

// 设置一个C函数，用来接收崩溃信息
void UncaughtExceptionHandler(NSException *exception){
    
    NSArray *symbols = [exception callStackSymbols];
    NSString *reason = [exception reason];
    NSString *name = [exception name];
    NSDictionary *userInfo = [exception userInfo];
    NSArray *callStackReturnAddresses = [exception callStackReturnAddresses];
    NSLog(@"exception -- %@",exception);
    NSLog(@"symbols -- %@",symbols);
    NSLog(@"reason -- %@",reason);
    NSLog(@"name -- %@",name);
    NSLog(@"userInfo -- %@",userInfo);
    NSLog(@"callStackReturnAddresses -- %@",callStackReturnAddresses);
    
    /*
     2016-11-29 15:32:31.638 crash[6667:193700] exception -- *** -[__NSArrayI objectAtIndex:]: index 5 beyond bounds [0 .. 2]
     2016-11-29 15:32:31.638 crash[6667:193700] symbols -- (
     0   CoreFoundation                      0x000000010389634b __exceptionPreprocess + 171
     1   libobjc.A.dylib                     0x00000001032f721e objc_exception_throw + 48
     2   CoreFoundation                      0x00000001037d0eeb -[__NSArrayI objectAtIndex:] + 155
     3   crash                               0x0000000102ca25e4 -[ViewController click:] + 164
     4   UIKit                               0x0000000103cbb5b8 -[UIApplication sendAction:to:from:forEvent:] + 83
     5   UIKit                               0x0000000103e40edd -[UIControl sendAction:to:forEvent:] + 67
     6   UIKit                               0x0000000103e411f6 -[UIControl _sendActionsForEvents:withEvent:] + 444
     7   UIKit                               0x0000000103e400f2 -[UIControl touchesEnded:withEvent:] + 668
     8   UIKit                               0x0000000103d28ce1 -[UIWindow _sendTouchesForEvent:] + 2747
     9   UIKit                               0x0000000103d2a3cf -[UIWindow sendEvent:] + 4011
     10  UIKit                               0x0000000103cd763f -[UIApplication sendEvent:] + 371
     11  UIKit                               0x0000000113c30ad1 -[UIApplicationAccessibility sendEvent:] + 93
     12  UIKit                               0x00000001044c971d __dispatchPreprocessedEventFromEventQueue + 3248
     13  UIKit                               0x00000001044c23c7 __handleEventQueue + 4879
     14  CoreFoundation                      0x000000010383b311 __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__ + 17
     15  CoreFoundation                      0x000000010382059c __CFRunLoopDoSources0 + 556
     16  CoreFoundation                      0x000000010381fa86 __CFRunLoopRun + 918
     17  CoreFoundation                      0x000000010381f494 CFRunLoopRunSpecific + 420
     18  GraphicsServices                    0x00000001075fea6f GSEventRunModal + 161
     19  UIKit                               0x0000000103cb9964 UIApplicationMain + 159
     20  crash                               0x0000000102ca2aef main + 111
     21  libdyld.dylib                       0x000000010667668d start + 1
     22  ???                                 0x0000000000000001 0x0 + 1
     )
     2016-11-29 15:32:31.669 crash[6667:193700] reason -- *** -[__NSArrayI objectAtIndex:]: index 5 beyond bounds [0 .. 2]
     2016-11-29 15:32:31.669 crash[6667:193700] name -- NSRangeException
     2016-11-29 15:32:31.669 crash[6667:193700] userInfo -- (null)
     2016-11-29 15:32:31.669 crash[6667:193700] callStackReturnAddresses -- (0x103896333 0x1032f721e 0x1037d0eeb 0x102ca25e4 0x103cbb5b8 0x103e40edd 0x103e411f6 0x103e400f2 0x103d28ce1 0x103d2a3cf 0x103cd763f 0x113c30ad1 0x1044c971d 0x1044c23c7 0x10383b311 0x10382059c 0x10381fa86 0x10381f494 0x1075fea6f 0x103cb9964 0x102ca2aef 0x10667668d 0x1)
     */
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
