//
//  SecondVC.swift
//  UIKit-NavigationTutorial
//
//  Created by 김은지 on 2023/04/22.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 

    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "navToThirdVC", sender: self)
    }

    @IBAction func goBackToFirstVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBackToFirstVC", sender: self)
        
    }
    
}
