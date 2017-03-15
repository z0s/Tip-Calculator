//
//  RateViewController.swift
//  Tip Calculator
//
//  Created by Developer on 3/15/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import Cosmos

class RateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        let cosmosView = CosmosView()
        view.addSubview(cosmosView)
        cosmosView.autoAlignAxis(toSuperviewAxis: .vertical)
        cosmosView.autoPinEdge(toSuperviewEdge: .top, withInset: 70)
        
 
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var prefersStatusBarHidden: Bool {
        get { return true }
    }

}
