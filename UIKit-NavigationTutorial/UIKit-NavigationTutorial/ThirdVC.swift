//
//  ThirdVC.swift
//  UIKit-NavigationTutorial
//
//  Created by 김은지 on 2023/04/22.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToSecondVC(unwindSegue: UIStoryboardSegue) {
        self.performSegue(withIdentifier: "backToSecondVC", sender: self)
    }
    
    @IBAction func backToFirstVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBackToFirstVC", sender: self) 
    
    }



}
