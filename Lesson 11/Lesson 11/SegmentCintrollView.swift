//
//  SegmentCintrollView.swift
//  Lesson 11
//
//  Created by Левон on 20.10.2020.
//

import UIKit

protocol SegmentControllViewDdelegate{
    func setText(myText: String)
}

@IBDesignable

class SegmentCintrollView: UIView {

    
     private var mySegmentedControl = UISegmentedControl(items: ["one", "two"])
        
    
    @IBInspectable  var borderWidth: CGFloat = 100{
        didSet{mySegmentedControl.layer.borderWidth = borderWidth}
    }
    @IBInspectable  var borderColor: UIColor = UIColor.green{
        didSet{mySegmentedControl.layer.borderColor = borderColor.cgColor}
    }
    @IBInspectable  var shadowOffset: CGSize = CGSize(width: 0, height: 0){
        didSet{mySegmentedControl.layer.shadowOffset = shadowOffset}
    }
    @IBInspectable  var shadowColor: UIColor = .black{
        didSet{mySegmentedControl.layer.shadowColor = shadowColor.cgColor}
    }
    @IBInspectable  var shadowOpacity: CGFloat = 0{
        didSet{mySegmentedControl.layer.shadowOpacity = Float(shadowOpacity)}
    }
    @IBInspectable var text1: String = ""{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable var text2: String = ""{
        didSet {layoutIfNeeded()}
    }
    var delegate: SegmentControllViewDdelegate?
    override func layoutSubviews() {
        super.layoutSubviews()
        
    mySegmentedControl.frame = CGRect(x: 0.0, y: 0.0, width: 300, height: 50)
        mySegmentedControl.selectedSegmentIndex = 0

    mySegmentedControl.addTarget(self, action: #selector(segmentedValueChanged(_:)), for: .valueChanged)
        addSubview(mySegmentedControl)
    }
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!) {
         print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
        if   mySegmentedControl.selectedSegmentIndex == 0{
            delegate?.setText(myText: "Selected Segment Index is : one ")
        mySegmentedControl.setTitle("\(text1)", forSegmentAt: 0)
            print("Selected Segment Index is : one ")
            }
        if   mySegmentedControl.selectedSegmentIndex == 1{
            delegate?.setText(myText: "Selected Segment Index is : two ")
            mySegmentedControl.setTitle("\(text2)", forSegmentAt: 0)
               print("Selected Segment Index is : two ")
            }
     }




}
