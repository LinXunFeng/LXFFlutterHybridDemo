//
//  AppDelegate.swift
//  LXFFlutterHybridDemo
//
//  Created by 林洵锋 on 2020/7/11.
//  Copyright © 2020 LXF. All rights reserved.
//

import UIKit
import Flutter

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    // 创建 Flutter引擎
    lazy var flutterEngine = FlutterEngine(name: "lxf")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // 启动 Flutter引擎
        flutterEngine.run()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    override func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    override func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

