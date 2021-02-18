//
//  ViewController.swift
//  Lesson 11
//
//  Created by Левон on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {
var myText = ""
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ShareViewController, segue.identifier == "Show"{
            DispatchQueue.main.async {
                
            
            vc.SegmentView.delegate = self
            }
        }
    }
    
    @IBAction func tapButton(_ sender: Any){
        view.backgroundColor = .green
        
    }

}
extension ViewController: SegmentControllViewDdelegate {
    func setText(myText: String) {
        self.myText = myText
        print(myText)
    }
}

