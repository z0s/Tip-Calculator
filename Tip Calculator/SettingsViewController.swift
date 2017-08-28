//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Zubair on 8/27/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    fileprivate let tipItems = ["12%","15%","18%","20%","25%"]
    fileprivate let items = ["Round None".uppercased(),"Round Total".uppercased(),"Round Tips".uppercased()]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        
        let tipSegmentedControl = UISegmentedControl(items: tipItems)
        let lusterSegmentedControl = UISegmentedControl(items: items)
        view.addSubview(tipSegmentedControl)
        view.addSubview(lusterSegmentedControl)
        

        // Do any additional setup after loading the view.
        
        tipSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        tipSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
        tipSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 150)
        tipSegmentedControl.autoSetDimension(.height, toSize: 30)
        
        
        tipSegmentedControl.addTarget(self, action: #selector(tipSegmentedControlTouched(sender:)), for: .valueChanged)
        
        lusterSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        lusterSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 100)
        lusterSegmentedControl.autoSetDimension(.height, toSize: 30)
        lusterSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
        
    }

    func tipSegmentedControlTouched(sender : UISegmentedControl) {
        
        let userInfo = [sender.selectedSegmentIndex+1:tipItems[sender.selectedSegmentIndex]]
          NotificationCenter.default.post(name: Notification.Name("TipPercent"), object: nil, userInfo: userInfo)
    }

}
