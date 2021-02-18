//
//  SecondViewController.swift
//  Lesson 8
//
//  Created by Левон on 29.09.2020.
//

import UIKit

class SecondViewController: UIViewController {
     
    @IBOutlet weak var BlueLabel: UILabel!
    
    @IBOutlet weak var hightConstrint: NSLayoutConstraint!
    
    
    
    @IBAction func Button(_ sender: Any) {
    
    let size = BlueLabel.font.lineHeight
    if hightConstrint.constant == size{
        hightConstrint.constant = size * 5
    } else {
        hightConstrint.constant = size
    }
    view.layoutSubviews()

        }
    
    
    }
    


