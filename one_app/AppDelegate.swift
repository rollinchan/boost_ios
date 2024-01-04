//
//  AppDelegate.swift
//  one_app
//
//  Created by smith on 2024/1/4.
//

import UIKit
import flutter_boost

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = MainViewController()
        var nav = UINavigationController(rootViewController: vc)
    
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        //创建代理，做初始化操作
        let delegate = BoostDelegate.shared
        FlutterBoost.instance().setup(application, delegate: delegate) { engine in

            
        }
        
        // Override point for customization after application launch.
        return true
    }


}

