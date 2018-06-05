//
//  ViewController.swift
//  Countdown
//
//  Created by 邝子涵 on 2018/6/4.
//  Copyright © 2018年 上海仁菜网络科技有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var dateView: KZHCountdown = {
        let dateView = KZHCountdown()
        dateView.endTime = 1528261200
        return dateView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        
        view.addSubview(dateView)
        
        dateView.frame = CGRect(x: 100, y: 200, width: 170, height: 40)
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 150, height: 40))
        button.setTitle("重置时间(模拟刷新)", for: UIControlState.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.backgroundColor = UIColor.blue
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonClick), for: UIControlEvents.touchUpInside)
    }
    
    
    @objc func buttonClick() {
        dateView.endTime = 1528344000
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

