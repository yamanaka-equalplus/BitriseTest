//
//  Copyright © 2018年 Makoto Yamanaka. All rights reserved.
//
import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		//──────────Crashlytics
		Fabric.with([Crashlytics.self])
		
		//──────────TEST
		Thread.sleep(forTimeInterval: 3)
		return true
	}
}
