//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Developer on 3/6/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import IoniconsSwift

class ViewController: UIViewController {
    
    fileprivate var currentString = ""
    fileprivate var tipStr: String = ""
    fileprivate let titleLabel = UILabel()
    fileprivate let inputTextField = UITextField()
    fileprivate let adjustedTotal = UILabel()
    fileprivate var tipLabel = UILabel()
    fileprivate let splitBetween2 = UILabel()
    fileprivate let splitBetween3 = UILabel()
    fileprivate let splitBetween4 = UILabel()
    fileprivate let splitImageView = UIImageView()
    fileprivate let splitImageView2 = UIImageView()
    fileprivate let splitImageView3 = UIImageView()
    fileprivate let splitImageView4 = UIImageView()
    fileprivate let splitImageView5 = UIImageView()
    fileprivate let splitImageView6 = UIImageView()
    fileprivate let splitImageView7 = UIImageView()
    fileprivate let splitImageView8 = UIImageView()
    fileprivate let splitImageView9 = UIImageView()
    fileprivate let tipItems = ["12%","15%","18%","20%","25%"]
    fileprivate let items = ["Round None".uppercased(),"Round Total".uppercased(),"Round Tips".uppercased()]
    fileprivate let attr = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 30.0)! ]
    fileprivate let str =  "Hey I am a placeholder."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipSegmentedControl = UISegmentedControl(items: tipItems)
        let lusterSegmentedControl = UISegmentedControl(items: items)
        view.addSubview(tipSegmentedControl)
        view.addSubview(lusterSegmentedControl)
        
        addSubviews()
        setupInputTextField()
        
        titleLabel.attributedText = NSAttributedString(string: "Tip Calculator".capitalized, attributes: attr)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 15)
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        
        
        setupAdjustedTotalView()
        setupSplitImageViews()
        setupViewForSplitAmongTwo()
        setupViewForSplitAmongThree()
        setupViewForSplitAmongFour()
        
        tipSegmentedControl.addTarget(self, action: #selector(tipSegmentedControlTouched(sender:)), for: .valueChanged)
        
        tipLabel.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        tipLabel.autoPinEdge(.top, to: .bottom, of: inputTextField, withOffset: 5)
        
        tipSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        tipSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
        tipSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 150)
        tipSegmentedControl.autoSetDimension(.height, toSize: 30)
        
        lusterSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        lusterSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 100)
        lusterSegmentedControl.autoSetDimension(.height, toSize: 30)
        lusterSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
    }
    
    func setupAdjustedTotalView() {
        adjustedTotal.autoAlignAxis(toSuperviewAxis: .vertical)
        adjustedTotal.autoPinEdge(.top, to: .bottom, of: inputTextField, withOffset: 85.0)
        
    }
    
    func setupSplitImageViews() {
        splitImageView.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView2.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView3.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView4.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView5.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView6.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView7.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView8.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
        splitImageView9.image = Ionicons.person.image(60, color: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0))
    }
    
    func setupViewForSplitAmongTwo() {
        let attrStr = NSAttributedString(string: str, attributes: attr)
        splitBetween2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitBetween2.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween2.backgroundColor = .black
        splitBetween2.attributedText = attrStr
        splitImageView.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        splitImageView2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitImageView2.autoConstrainAttribute(.leading, to: .leading, of: splitImageView, withOffset: 50)
        
    }
    
    func setupViewForSplitAmongThree() {
        let attrStr = NSAttributedString(string: str, attributes: attr)
        splitBetween3.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitBetween3.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween3.backgroundColor = .black
        splitBetween3.attributedText = attrStr
        splitImageView3.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView3.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        splitImageView4.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView4.autoConstrainAttribute(.leading, to: .leading, of: splitImageView3, withOffset: 50)
        splitImageView5.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView, withOffset: 70)
        splitImageView5.autoConstrainAttribute(.leading, to: .leading, of: splitImageView4, withOffset: 50)
    }
    
    func setupViewForSplitAmongFour() {
        let attrStr = NSAttributedString(string: str, attributes: attr)
        splitBetween4.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitBetween4.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween4.backgroundColor = .black
        splitBetween4.attributedText = attrStr
        
        splitImageView6.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView6.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        
        
        splitImageView7.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView7.autoConstrainAttribute(.leading, to: .leading, of: splitImageView6, withOffset: 50)
        
        splitImageView8.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView8.autoConstrainAttribute(.leading, to: .leading, of: splitImageView7, withOffset: 50)
        
        splitImageView9.autoAlignAxis(.horizontal, toSameAxisOf: splitImageView3, withOffset: 70)
        splitImageView9.autoConstrainAttribute(.leading, to: .leading, of: splitImageView8, withOffset: 50)
        
    }
    
    func addSubviews() {
        view.backgroundColor = .lightGray
        view.addSubview(titleLabel)
        view.addSubview(inputTextField)
        view.addSubview(tipLabel)
        view.addSubview(adjustedTotal)
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
    }
    
    func setupInputTextField() {
        let attrForPlaceholder = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 70.0)! ]
        inputTextField.keyboardType = .decimalPad
        inputTextField.autoPinEdge(.top, to: .bottom, of: titleLabel, withOffset: 10)
        inputTextField.backgroundColor = .clear
        inputTextField.autoAlignAxis(toSuperviewAxis: .vertical)
        inputTextField.autoPinEdge(toSuperviewEdge: .leading, withInset: 30)
        inputTextField.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        inputTextField.font = UIFont(name: "Chalkduster", size: 50.0)
        inputTextField.textColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        inputTextField.textAlignment = .right
        inputTextField.delegate = self
        inputTextField.attributedPlaceholder = NSAttributedString(string: "$", attributes: attrForPlaceholder)
    }
    
    func tipSegmentedControlTouched(sender : UISegmentedControl) -> String {
        tipStr = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        var tipValues = [0.12,0.15,0.18,0.20,0.25]
        var totalDouble = Double()
        let nsString : NSString  =  NSString(string: currentString)
        totalDouble = (nsString.doubleValue/100)*(tipValues[sender.selectedSegmentIndex])

        let adjustedTotalCost = totalDouble + (nsString.doubleValue/100)
        adjustedTotal.text = String(adjustedTotalCost)
        let attr = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 30.0)! ]
        let attrStrForTip = NSAttributedString(string: tipStr, attributes: attr)
        tipLabel.attributedText = attrStrForTip
        return tipStr
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}

extension ViewController:UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.characters.count == 0 {
            currentString = ""
            return true
        }
        
        switch string {
        case "0","1","2","3","4","5","6","7","8","9":
            
            if currentString.characters.count < 6 {
                currentString += string
            } else {
                textField.resignFirstResponder()
            }
            
            formatCurrency(currentString)
        default:
            break
        }
        return false
    }
    
    func formatCurrency(_ string: String) {
        print("format \(string)")
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.currency
        formatter.locale = NSLocale(localeIdentifier: "en_US") as Locale!
        let numberFromField = (NSString(string: currentString).doubleValue)/100
        
        inputTextField.text = formatter.string(from: numberFromField as NSNumber)
        print(inputTextField.text!)
    }
}
