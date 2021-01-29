//
//  AppDelegate.swift
//  Samples
//
//  Created by Nguyen Duc Hiep on 11/9/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    self.window = window

    window.rootViewController = ViewController()
    window.makeKeyAndVisible()
    return true
  }
}
