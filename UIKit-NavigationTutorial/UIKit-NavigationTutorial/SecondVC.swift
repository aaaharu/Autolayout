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
    
    @IBAction func backToFirstVC(unwindSegue: UIStoryboardSegue) {
        self.performSegue(withIdentifier: "backToFirstVC", sender: self)
    }
}
