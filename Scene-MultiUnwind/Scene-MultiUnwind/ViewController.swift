//
//  ViewController.swift
//  Scene-MultiUnwind
//
//  Created by 강수희 on 2022/11/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("VIEW DID LOAD")
    }
    
    @IBAction func gotoPage1(_ sender: UIStoryboardSegue) {
        print("unwind")
    }

}

