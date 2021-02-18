
//task: 4
//
//Протокол определяет ряд методов и переменных, которые в обязательном порядке должен наследовать определенный тип,  класс является описанием объекта, а объект представляет экземпляр этого класса.
//
//task: 5
//
//Могут: классы, структуры, енамы.
//Не могут: кортежи.
//
//task: 6

// mark: a
import Foundation
protocol MyStep{
    
    var WichStep: String { get set}
    
    init(WichStep: String)
    
    
}
protocol ForChessEngine {
    func WhichCell()
}

class Chess: MyStep, ForChessEngine{
    required init(WichStep: String) {
        self.WichStep = WichStep
    }
    
    func WhichCell() {
        print("It's cell")
    }
    
    var WichStep: String = ""
    
    func step(){
     print("one step")
    }

 var myFigure = ""
    func position() -> Double{
    return 0
    }
}

//mark: b

import Foundation
protocol Flyable{
   func fly()
}
protocol Drawable{
    func draw()
}
class ComputerGames:  Flyable, Drawable{
    func fly(){
        print("I'm fly")
    }
    func draw(){
        print("I'm draw")
    }
}

// task: 7a
import UIKit
extension CGRect {
    var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}

extension CGRect{
    var square: CGPoint{
        return CGPoint(x: maxX , y: minX)
    }
}

extension UIView {
func hiddenUIView(hidden: Bool) {
        UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.isHidden = hidden
        })
    }
}
    
struct Value{
    var minValue: Int
    var maxValue: Int
}

struct Numbers{
    var nums: [Int] = [3, 5, 8, 9]
}
extension Value: Comparable{
    static func < (lhs: Value, rhs: Value) -> Bool {
        return lhs.minValue < rhs.maxValue
    }
}

//task: 8
//Protocol Oriented Programming - Служит для описания функциональности объекта.
//
