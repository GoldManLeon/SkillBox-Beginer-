//
//  ViewController.swift
//  Lesson 6 2.2
//
//  Created by Левон on 04.09.2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
    super.viewDidLoad()
}
    
    
    
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func nameButton(_ sender: Any) {
       
        if let value  = Int(nameTextField.text!){
            let i = pow(2.0, Double(value))
       
          helloLabel.text = String(i)
            
        }else{
           
            helloLabel.text = "Некорректные данные"
        }
    }
}


        
        
        
        
        
        
        
    
        
        
            



        
        


