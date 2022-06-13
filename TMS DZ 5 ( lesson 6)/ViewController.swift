//
//  ViewController.swift
//  TMS DZ 5 ( lesson 6)
//
//  Created by Егор on 10.06.2022.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
}

class ViewController: UIViewController {

    let circleButton = UIButton()
    let squaresButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // создаем круг
        
        circleButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        circleButton.layer.cornerRadius = circleButton.frame.size.width / 2
        circleButton.backgroundColor = .red
        circleButton.addTarget(self, action: #selector (tapOnCircleButton), for: .touchUpInside)
        self.view.addSubview(circleButton)
        
        // создаем кнопку
        
        squaresButton.addTarget(self, action: #selector(squaresButtonPressed), for: .touchUpInside)
        squaresButton.frame = CGRect(x: view.frame.width / 2 - 50, y: view.frame.height - 60, width: 100, height: 30)
        squaresButton.backgroundColor = .blue
        squaresButton.setTitle("button", for: .normal)
        self.view.addSubview(squaresButton)
        
    }
    
    
    
    
    @objc   func tapOnCircleButton(){
        let screenWidght = Int(view.frame.size.width) - Int(circleButton.frame.size.width)
        let screenHeight = Int(view.frame.size.height) - Int(circleButton.frame.size.height)
        
        circleButton.frame = CGRect(x: Int.random(in: 0...screenWidght), y: Int.random(in: 0...screenHeight), width: 100, height: 100)
        circleButton.layer.cornerRadius = circleButton.frame.size.width / 2
        circleButton.backgroundColor = UIColor.random
        
    }
    
    // функция для заполнения квадратами
    
    @objc func squaresButtonPressed() {
        
        self.circleButton.removeFromSuperview()
        
        var originX = 0
        var originY = 0
        let width = 100
        let height = 100
        
        while originY < Int(self.view.frame.height - CGFloat(height)){
            while originX < Int(self.view.frame.width - CGFloat(width)){
                createSquare(x: originX, y: originY, width: width, height: height)
                originX += width
            }
            originX = 0
            originY += height
        }
    }
    
    
    func createSquare (x: Int, y: Int, width: Int, height: Int){
        let newSqaure = UIView()
        newSqaure.frame = CGRect(x: x, y: y, width: width, height: height)
        newSqaure.backgroundColor = .random
        self.view.addSubview(newSqaure)
    }
    

    
    
        
    }
    
   
    
    
    

