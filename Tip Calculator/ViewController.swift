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
    fileprivate let adjustdedTotal = UILabel()
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tipSegmentedControl = UISegmentedControl(items: tipItems)
        let lusterSegmentedControl = UISegmentedControl(items: items)
       
        view.backgroundColor = .lightGray
        view.addSubview(titleLabel)
        view.addSubview(inputTextField)
        view.addSubview(tipLabel)
        view.addSubview(adjustdedTotal)
        view.addSubview(tipSegmentedControl)
        view.addSubview(lusterSegmentedControl)
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
        
        let attr = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 30.0)! ]
        let attrForPlaceholder = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 70.0)! ]
        
        
        titleLabel.attributedText = NSAttributedString(string: "The Tip Companion \nGuide".capitalized, attributes: attr)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 10)
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        
//        inputTextField.keyboardType = .decimalPad
        
        inputTextField.autoPinEdge(.top, to: .bottom, of: titleLabel, withOffset: 20)
        inputTextField.backgroundColor = .clear
        inputTextField.autoAlignAxis(toSuperviewAxis: .vertical)
        inputTextField.autoMatch(.width, to: .width, of: titleLabel)
        inputTextField.font = UIFont(name: "Chalkduster", size: 70.0)
        inputTextField.textColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        inputTextField.textAlignment = .right
        inputTextField.delegate = self
        
        inputTextField.attributedPlaceholder = NSAttributedString(string: "$", attributes: attrForPlaceholder)
        
        
        let str =  "Hey I am a placeholder."
        
        tipSegmentedControl.addTarget(self, action: #selector(tipSegmentedControlTouched(sender:)), for: .valueChanged)

        let attrStr = NSAttributedString(string: str, attributes: attr)

        tipLabel.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        tipLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 200)
        
        
        splitBetween2.autoAlignAxis(toSuperviewAxis: .horizontal)
        splitBetween2.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30)
        splitBetween2.backgroundColor = .black
        splitBetween2.attributedText = attrStr
        
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
        
        
        tipSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        tipSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
        tipSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 150)
        tipSegmentedControl.autoSetDimension(.height, toSize: 30)
        
        lusterSegmentedControl.tintColor = UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0)
        lusterSegmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 100)
        lusterSegmentedControl.autoSetDimension(.height, toSize: 30)
        lusterSegmentedControl.autoAlignAxis(toSuperviewAxis: .vertical)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        get { return true }
    }
    func tipSegmentedControlTouched(sender : UISegmentedControl) -> String {
        tipStr = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        var tipValues = [0.12,0.15,0.18,0.20,0.25]
        var totalDouble = Double()
//        switch sender.selectedSegmentIndex {
//        case 0:
        let nsString : NSString  =  NSString(string: inputTextField.text!)
        totalDouble = (nsString.doubleValue)*(tipValues[sender.selectedSegmentIndex])
        
//        totalDouble = NSString(inputTextField.text!).doubleValue*tipValues[sender.selectedSegmentIndex]
        print(totalDouble)
//        case 1:
//        case 2:
//        case 3:
//        case 4:
//        default:
//            
//            
//        }
        let attr = [NSForegroundColorAttributeName: UIColor(red: 0, green: 0.5373, blue: 0.8275, alpha: 1.0), NSFontAttributeName: UIFont(name: "Chalkduster", size: 30.0)! ]
        let attrStrForTip = NSAttributedString(string: tipStr, attributes: attr)
        tipLabel.attributedText = attrStrForTip
        return tipStr
    }
    func textFieldHasValueChanged() {
        
    }
    
    
}
extension ViewController : UITextFieldDelegate  {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //We return true here so that changes that do not effect number of characters.
        if string.characters.count == 0 {
            currentString = String()
            return true
        }
        switch string {
        case "0","1","2","3","4","5","6","7","8","9":
            
            if currentString.characters.count < 6 {
                currentString += string
            }
            print(currentString)
            formatCurrency(currentString)
        default:
            break
//            var array = Array(string.characters)
//            var currentStringArray = Array(currentString.characters)
//            if array.count == 0 && currentStringArray.count != 0 {
//                currentStringArray.removeLast()
//                currentString = ""
//                
//                for character in currentStringArray {
//                    if currentString.characters.count < 7 {
//                        currentString += String(character)
//                    }
//                }
//                formatCurrency(currentString)
//            }
        }
        return false //currentString.isNumeric() && currentString.characters.count <= 7
        //        let maxLength = 7
        //        let currentString = textField.text! as NSString
        //        let newString = currentString.replacingCharacters(in: range, with: string)
        //
        //
        //        return newString.isNumeric() && newString.characters.count <= maxLength

    }
    func formatCurrency(_ string: String) {
        print("format \(string)")
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.currency
        formatter.locale = NSLocale(localeIdentifier: "en_US") as Locale!
        var numberFromField = (NSString(string: currentString).doubleValue)/100
        
        inputTextField.text = formatter.string(from: numberFromField as NSNumber)
        print(inputTextField.text)
    }
}

//
//extension String {
//    func isNumeric() -> Bool
//    {
//        let scanner = Scanner(string: self)
//        
//        scanner.locale = Locale.current
//        
//        return scanner.scanDecimal(nil) && scanner.isAtEnd
//    }
//}

