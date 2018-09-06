//
//  AppDelegate.swift
//  FlareAssesment
//
//  Created by Mohammed Ennabah on 9/4/18.
//  Copyright © 2018 Mohammed Ennabah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow.init(frame: UIScreen.main.bounds)
    window?.rootViewController = UINavigationController.init(rootViewController: SearchTableViewController())
    window?.makeKeyAndVisible()
    
    return true
  }
  
}

