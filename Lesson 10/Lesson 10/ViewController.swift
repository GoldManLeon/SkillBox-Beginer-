//
//  ViewController.swift
//  Lesson 10
//
//  Created by Левон on 07.10.2020.
//

import UIKit
struct Item {
 var name: String
 var price: Int
 var discount: Int
 var pic: String
}

extension Item{
  static func procurement() -> [Item]{
   let items = [
     Item(name: "Пуховик", price: 5290, discount: 2490, pic: "Пуховик"),
     Item(name: "Худи", price: 4690, discount: 1990, pic: "Худи"),
     Item(name: "Bomber", price: 8990, discount: 5990, pic: "Bomber"),
     Item(name: "queen", price: 2490, discount: 1390, pic: "queen"),
   ]
   return items
 }
}


class ViewController: UIViewController{
    
    @IBOutlet weak var CollectinView: UICollectionView!
    let item = Item.procurement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
    
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      let w = UIScreen.main.bounds.size.width / 2
      return CGSize(width: w, height: w * 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! CollectionViewCell
        cell.FirstLabel.text = item[indexPath.row].name
        cell.SecondLabel.text = "\(item[indexPath.row].price)"
        cell.ThirdLabel.text = "\(item[indexPath.row].discount) Руб"
        cell.ImageView.image = UIImage.init(named: "\(item[indexPath.row].pic)")
        let dis = Double(item[indexPath.row].discount)
        let pr = Double(item[indexPath.row].price)
       // cell.NumberLabel.setTitle("\(Int(100 - dis / pr * 100))%", for: UIControl.State())
        cell.NumberLabel.setTitle("\(Int(dis - pr))", for: UIControl.State())
        let Puchovik: NSMutableAttributedString =  NSMutableAttributedString(string: "5290 руб")
        
        let Hoody: NSMutableAttributedString = NSMutableAttributedString(string: "4690 руб")

        let Bomber: NSMutableAttributedString = NSMutableAttributedString(string: "8990 руб")

        let Queen: NSMutableAttributedString = NSMutableAttributedString(string: "2490 руб")

        if cell.ImageView.image == UIImage.init(named: "\(item[0].pic)"){
            Puchovik.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, Puchovik.length))
            cell.SecondLabel.attributedText = Puchovik
        }
        if cell.ImageView.image == UIImage.init(named: "\(item[1].pic)"){
            Hoody.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, Hoody.length))
            cell.SecondLabel.attributedText = Hoody

        }
        if cell.ImageView.image == UIImage.init(named: "\(item[2].pic)"){
            Bomber.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, Bomber.length))
            cell.SecondLabel.attributedText = Bomber

        }
        if cell.ImageView.image == UIImage.init(named: "\(item[3].pic)"){
            Queen.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, Queen.length))
            cell.SecondLabel.attributedText = Queen

        }

        return cell
    }
    
        
        
        
        
        
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    



























