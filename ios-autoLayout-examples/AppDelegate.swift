//
//  AppDelegate.swift
//  ios-autoLayout-examples
//
//  Created by Nicholas Kuhne on 2017-04-18.
//  Copyright © 2017 TWG. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		let window = UIWindow(frame: UIScreen.main.bounds)
		
		let viewController = ViewController(nibName: nil, bundle: nil)
		
		window.rootViewController = viewController
		
		window.makeKeyAndVisible()
		
		self.window = window
		
		return true
	}
}

