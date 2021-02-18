//
//  ClockViewController.swift
//  Lesson 11
//
//  Created by Левон on 19.10.2020.
//

import UIKit
@IBDesignable
class ClockViewController: UIView {

   
    var lineSize = CGFloat(5)
    var lineLenght = CGFloat(12)
    var coordinats = CGFloat(227)
   
   @IBInspectable var hours: CGFloat = 2{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable var hourMinutes: CGFloat = 30{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable var hourSecond: CGFloat = 40{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable  var hoursColor: UIColor = .black{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable  var hoursMinutesColor: UIColor = .black{
        didSet {layoutIfNeeded()}
    }
    @IBInspectable  var hoursSecondColor: UIColor = .lightGray{
        didSet {layoutIfNeeded()}
    }

    private let topMarker = UIView()
    private let bottomMarker = UIView()
    private let leftMarker = UIView()
    private let rightMarker = UIView()
    private let lineClockHours = UIView()
    private let lineClockMinuts = UIView()
    private let lineClockSecond = UIView()
    private let roundedView = UIView()

    override func layoutSubviews() {
        super.layoutSubviews()
        let w = frame.size.width
        let h = frame.size.height
        lineClockMinuts.layer.anchorPoint = CGPoint(x: 1, y:0)
        lineClockHours.layer.anchorPoint = CGPoint(x: 1, y:0)
        lineClockSecond.layer.anchorPoint = CGPoint(x: 1, y: 0)
        lineClockSecond.frame = CGRect(x: w/2, y: h/2, width: lineSize, height: h/2 - 25)
        lineClockSecond.backgroundColor = hoursSecondColor
        lineClockMinuts.frame = CGRect(x: w/2, y: h/2, width: lineSize, height: h/2 - 25 )
        lineClockMinuts.backgroundColor = hoursMinutesColor
        lineClockHours.frame = CGRect(x: w/2, y: h/2, width: lineSize, height: h/2 - 60)
        lineClockHours.backgroundColor = hoursColor
        roundedView.backgroundColor = .blue
        roundedView.frame = CGRect(x: w / 2 - 7, y: h / 2 - 8, width: 20, height: 20)
        roundedView.layer.cornerRadius = 10
        topMarker.frame = CGRect(x: w/2, y: 0, width: lineSize, height: lineLenght)
        bottomMarker.frame = CGRect(x: w/2, y: coordinats, width: lineSize, height: lineLenght)
        leftMarker.frame = CGRect(x: 0, y: h/2, width: lineLenght, height: lineSize)
        rightMarker.frame = CGRect(x: coordinats, y: h/2, width: lineLenght, height: lineSize)
        updateHours()
        updateMinutes()
        updateSecunds()
        layer.cornerRadius = frame.size.width / 2
        for v in [topMarker, bottomMarker, leftMarker, rightMarker]{
            v.backgroundColor = UIColor.blue
        }
        for v in [topMarker, bottomMarker, leftMarker, rightMarker, lineClockHours, lineClockMinuts, lineClockSecond]{
            addSubview(v)
        }
        updateHours()
        updateMinutes()
        updateSecunds()
        addSubview(lineClockHours)
        addSubview(lineClockSecond)
        addSubview(lineClockMinuts)
        addSubview(roundedView)
    }
    func updateHours(){
        let angle1 = CGFloat.pi * 2 * (hours / CGFloat(12))
        lineClockHours.transform = CGAffineTransform(rotationAngle: angle1)
    }
    func updateMinutes(){
        let angle2 = CGFloat.pi * 2 * (hourMinutes / CGFloat(60))
        lineClockMinuts.transform = CGAffineTransform(rotationAngle: angle2)
    }
    func updateSecunds(){
        let angle3 = CGFloat.pi * 2 * (hourSecond / CGFloat(60))
        lineClockMinuts.transform = CGAffineTransform(rotationAngle: angle3)
    }
}






