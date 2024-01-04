//
//  ViewController.swift
//  one_app
//
//  Created by smith on 2024/1/4.
//

import UIKit
import flutter_boost

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton()
        btn.setTitle("title", for: .normal)
        btn.addTarget(self, action:#selector(btnClick(_:)), for: .touchUpInside)
        self.view.backgroundColor = .red
        btn.frame = CGRect(x: 10, y: 100, width: 60, height: 40)
        self.view.addSubview(btn)
        
        let newLab = UIButton()
        newLab.setTitle("title2", for: .normal)
        newLab.addTarget(self, action:#selector(btn2Click(btn:)), for: .touchUpInside)
        self.view.backgroundColor = .red
        newLab.frame = CGRect(x: 80, y: 100, width: 60, height: 40)
        self.view.addSubview(newLab)
        // Do any additional setup after loading the view.
    }

    
    @objc func btnClick(_ sender:UIButton){
        self.navigationController?.isNavigationBarHidden = true
        print("btnClick")
        BoostDelegate.shared.navigationController = self.navigationController
        
        let options = FlutterBoostRouteOptions()
        options.pageName = "flutterPage"
        options.onPageFinished = { dic in
            print(" dic ----- \(String(describing: dic?["retval"]))")
        }
        FlutterBoost.instance().open(options)
        
        print("end -   --  - btnClick")
    }
    
    @objc func btn2Click(btn sender:UIButton){
        self.navigationController?.isNavigationBarHidden = true
        print("btnClick")
        BoostDelegate.shared.navigationController = self.navigationController
        
        let options = FlutterBoostRouteOptions()
        options.pageName = "newsPage"
        options.onPageFinished = { dic in
            print(" dic ----- \(String(describing: dic?["retval"]))")
        }
        FlutterBoost.instance().open(options)
        
        print("end -   --  - btnClick")
    }
}

