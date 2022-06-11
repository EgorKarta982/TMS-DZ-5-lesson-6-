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
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        circleButton.layer.cornerRadius = circleButton.frame.size.width / 2
        circleButton.backgroundColor = .red
        circleButton.addTarget(self, action: #selector (tapOnCircleButton), for: .touchUpInside)
        self.view.addSubview(circleButton)
    }
    
@objc    func tapOnCircleButton(){
    let screenWidght = Int(view.frame.size.width) - Int(circleButton.frame.size.width)
    let screenHeight = Int(view.frame.size.height) - Int(circleButton.frame.size.height)
    
    circleButton.frame = CGRect(x: Int.random(in: 0...screenWidght), y: Int.random(in: 0...screenHeight), width: 100, height: 100)
    circleButton.layer.cornerRadius = circleButton.frame.size.width / 2
    circleButton.backgroundColor = UIColor.random
    
    }
    
    // ghbny
    
    // закомитить на гитхаб
    
}

