//
//  ViewController.swift
//  LXFFlutterHybridDemo
//
//  Created by 林洵锋 on 2020/7/11.
//  Copyright © 2020 LXF. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建FlutterViewController
//        let flutterVc = FlutterViewController(engine: fetchFlutterEngine(), nibName: nil, bundle: nil)
        
        // 可以将flutter视图做为当前控制器视图的一部分，但不推荐这么做
//        flutterVc.view.frame = self.view.bounds
//        self.view.addSubview(flutterVc.view)
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 200, width: 200, height: 44)
        btn.backgroundColor = .black
        btn.addTarget(self, action: #selector(showFlutterVc), for: .touchUpInside)
        btn.setTitle("弹出Flutter模块", for: .normal)
        self.view.addSubview(btn)
    }
    
    @objc func showFlutterVc() {
        let flutterEngine = fetchFlutterEngine()
        let flutterVc = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        
        // 修改初始路由为 /other
//        let flutterVc = FlutterViewController(project: FlutterDartProject(), nibName: nil, bundle: nil)
//        flutterVc.setInitialRoute("/other")
        
        self.present(flutterVc, animated: true, completion: nil)
        
    }
    
    func fetchFlutterEngine() -> FlutterEngine {
        return (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    }
}

