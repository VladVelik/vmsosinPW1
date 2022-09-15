//
//  ViewController.swift
//  vmsosinPW1
//
//  Created by Sosin Vladislav on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeColorButtonPressed(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false
        
        var set = Set<UIColor>()
        
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        UIView.animate(withDuration: 2, animations: {
            for view in self.views {
                view.layer.cornerRadius = .random(in: 0...40)
                view.backgroundColor = set.popFirst()
            }
        }) { completion in
            button?.isEnabled = true
        }
    }
}
