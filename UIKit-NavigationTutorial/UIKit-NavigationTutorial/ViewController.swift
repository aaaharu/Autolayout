//
//  ViewController.swift
//  UIKit-NavigationTutorial
//
//  Created by 김은지 on 2023/04/22.
//

import UIKit

class ViewController: UIViewController {

    var stepNumber: Int = 1 {
        didSet {
            self.title = "스탭넘버: \(stepNumber)"
        }
    }
    
    @IBOutlet weak var navToSecondVCBtn: UIButton!
    
    @IBOutlet weak var NavToDetailBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navToSecondVCBtn.addTarget(self, action: #selector(navToSecondVC(_:)), for: .touchUpInside)
        NavToDetailBtn.addTarget(self, action: #selector(NavToDetail(_:)), for: .touchUpInside)
    
    }

    @objc fileprivate func navToSecondVC(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "navToSecondVC", sender: self)
    }
    
@objc fileprivate func NavToDetail(_ sender: UIButton)  {
    self.performSegue(withIdentifier: "NavToDetail", sender: self)
}

    
    @IBAction func onPushBtnClicked(_ sender: UIButton) {
//        스토리보드 가져오기
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.stepNumber = stepNumber + 1
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

