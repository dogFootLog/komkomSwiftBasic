//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 강수희 on 2022/11/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveByNavi(_ sender: Any) {
        guard let uvc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        guard let uvc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        present(uvc, animated: true)
    }
}

