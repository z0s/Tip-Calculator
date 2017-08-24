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


class RateViewController: UIViewController {
    
    fileprivate let cosmosView = CosmosView()
    fileprivate let titleLabel = UILabel()
    fileprivate let total = UILabel()
    fileprivate var tip = Int()
    fileprivate let splitBetween2 = UILabel()
    fileprivate let splitBetween3 = UILabel()
    fileprivate let splitBetween4 = UILabel()
    fileprivate let titleStr = "Rate the experience \nyou enjoyed tonight:".capitalized
    fileprivate let subTextStr = String().uppercased()
    fileprivate let totalStr = "Pay an adjusted total \ncost of $().".capitalized
    fileprivate let splitImageView = UIImageView()
    fileprivate let splitImageView2 = UIImageView()
    fileprivate let splitImageView3 = UIImageView()
    fileprivate let splitImageView4 = UIImageView()
    fileprivate let splitImageView5 = UIImageView()
    fileprivate let splitImageView6 = UIImageView()
    fileprivate let splitImageView7 = UIImageView()
    fileprivate let splitImageView8 = UIImageView()
    fileprivate let splitImageView9 = UIImageView()
    fileprivate let closing = UILabel()
    fileprivate let closingStr = "Dolce Vita!"
    
    
    func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(total)
        view.addSubview(cosmosView)
        view.addSubview(splitBetween2)
        view.addSubview(splitBetween3)
        view.addSubview(splitBetween4)
        view.addSubview(splitImageView)
        view.addSubview(splitImageView2)
        view.addSubview(splitImageView3)
        view.addSubview(splitImageView4)
        view.addSubview(splitImageView5)
        view.addSubview(splitImageView6)
        view.addSubview(splitImageView7)
        view.addSubview(splitImageView8)
        view.addSubview(splitImageView9)
        view.addSubview(closing)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        addSubviews()
        
        splitImageView.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView2.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView3.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView4.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView5.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView6.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView7.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView8.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView9.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        
          let attr = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 28.0)! ]
 
        
        splitBetween2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitBetween2.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween2.backgroundColor = .black
        splitBetween2.text = "Hey I am a placeholder."
        
        splitImageView.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        splitImageView2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView2.autoConstrainAttribute(.leading, to: .leading, of: splitImageView, withOffset: 50)
        
        splitBetween3.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitBetween3.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween3.backgroundColor = .black
        splitBetween3.text = "Hey I am a placeholder."
        
        splitImageView3.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView3.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        splitImageView4.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView4.autoConstrainAttribute(.leading, to: .leading, of: splitImageView3, withOffset: 50)
        
        splitImageView5.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView5.autoConstrainAttribute(.leading, to: .leading, of: splitImageView4, withOffset: 50)
        
        splitBetween4.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitBetween4.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween4.backgroundColor = .black
        splitBetween4.text = "Hey I am a placeholder."
        
        splitImageView6.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView6.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        
        splitImageView7.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView7.autoConstrainAttribute(.leading, to: .leading, of: splitImageView6, withOffset: 50)
        
        splitImageView8.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView8.autoConstrainAttribute(.leading, to: .leading, of: splitImageView7, withOffset: 50)
        
        splitImageView9.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView9.autoConstrainAttribute(.leading, to: .leading, of: splitImageView8, withOffset: 50)
        
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        titleLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 30)
        titleLabel.attributedText = NSAttributedString(string: titleStr, attributes: attr)
        titleLabel.textAlignment = .center
        titleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        titleLabel.numberOfLines = 0
        
        
        total.autoAlignAxis(toSuperviewAxis: .vertical)
        total.autoPinEdge(toSuperviewEdge: .top, withInset: 240)
        total.textAlignment = .center
        total.numberOfLines = 0
        total.lineBreakMode = NSLineBreakMode.byWordWrapping
        total.attributedText = NSAttributedString(string: totalStr, attributes: attr)
        
        
        cosmosView.autoAlignAxis(toSuperviewAxis: .vertical)
        cosmosView.autoPinEdge(toSuperviewEdge: .top, withInset: 130)
        cosmosView.settings.starSize = 60
        cosmosView.settings.fillMode = .full
        cosmosView.settings.filledColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.emptyBorderColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.filledBorderColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        cosmosView.settings.minTouchRating = 0
        

        cosmosView.didFinishTouchingCosmos = {
            rating in
            
            switch rating {
            case 0 :
                self.total.text = "10"
            case 1 :
                self.total.text = "12"
            case 2:
                self.total.text = "15"
            case 3:
                self.total.text = "18"
            case 4:
                self.total.text = "20"
            case 5:
                self.total.text = "25"
            default: break
            }
        }
        
        closing.attributedText = NSAttributedString(string: closingStr, attributes: attr)
        closing.autoAlignAxis(toSuperviewAxis: .vertical)
        closing.autoPinEdge(toSuperviewEdge: .bottom, withInset: 100)
        
    }
    
    func calculateTip(_ total: Float) -> Float {
//        total 
        return Float()
    }

    override var prefersStatusBarHidden: Bool {
        get { return true }
    }

}
