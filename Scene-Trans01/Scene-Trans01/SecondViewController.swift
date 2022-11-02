//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 강수희 on 2022/11/02.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
}
