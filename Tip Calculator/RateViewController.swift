//
//  RateViewController.swift
//  Tip Calculator
//
//  Created by Developer on 3/15/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import Cosmos
import IoniconsSwift

let cosmosView = CosmosView()
let titleLabel = UILabel()
let subText = UILabel()
let total = UILabel()
let titleStr = "Rate the service you received tonight:".uppercased()
let subTextStr = String().uppercased()
var totalStr = String().uppercased()
fileprivate let splitImageView = UIImageView()
fileprivate let splitImageView2 = UIImageView()
fileprivate let splitImageView3 = UIImageView()
fileprivate let splitImageView4 = UIImageView()
fileprivate let splitImageView5 = UIImageView()
fileprivate let splitImageView6 = UIImageView()
fileprivate let splitImageView7 = UIImageView()
fileprivate let splitImageView8 = UIImageView()
fileprivate let splitImageView9 = UIImageView()
let closing = UILabel()
let closingStr = "Bon Apetit!"




class RateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(titleLabel)
        view.addSubview(subText)
        view.addSubview(total)
        view.addSubview(cosmosView)
        view.addSubview(splitImageView)
        view.addSubview(splitImageView2)
        view.addSubview(splitImageView3)
        view.addSubview(splitImageView4)
        view.addSubview(splitImageView5)
        view.addSubview(splitImageView6)
        view.addSubview(splitImageView7)
        view.addSubview(splitImageView8)
        view.addSubview(splitImageView9)
        
        
        splitImageView.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView2.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView3.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView4.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView5.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView6.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView7.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView8.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView9.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        
 
        splitImageView.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        splitImageView2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView2.autoConstrainAttribute(.leading, to: .leading, of: splitImageView, withOffset: 50)
        
        splitImageView3.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView3.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        splitImageView4.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView4.autoConstrainAttribute(.leading, to: .leading, of: splitImageView3, withOffset: 50)
        
        splitImageView5.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView5.autoConstrainAttribute(.leading, to: .leading, of: splitImageView4, withOffset: 50)
        
        splitImageView6.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView6.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        
        splitImageView7.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView7.autoConstrainAttribute(.leading, to: .leading, of: splitImageView6, withOffset: 50)
        
        splitImageView8.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView8.autoConstrainAttribute(.leading, to: .leading, of: splitImageView7, withOffset: 50)
        
        splitImageView9.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView9.autoConstrainAttribute(.leading, to: .leading, of: splitImageView8, withOffset: 50)
        
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        subText.autoAlignAxis(toSuperviewAxis: .vertical)
        total.autoAlignAxis(toSuperviewAxis: .vertical)
        cosmosView.autoAlignAxis(toSuperviewAxis: .vertical)
        cosmosView.autoPinEdge(toSuperviewEdge: .top, withInset: 100)
        cosmosView.settings.starSize = 60
        cosmosView.settings.fillMode = .full
        cosmosView.settings.filledColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.emptyBorderColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.filledBorderColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.minTouchRating = 0
        
        cosmosView.didTouchCosmos = {
            (rating) in
        }
        
        cosmosView.didFinishTouchingCosmos = { rating in }

        // Do any additional setup after loading the view.
    }

    override var prefersStatusBarHidden: Bool {
        get { return true }
    }

}
