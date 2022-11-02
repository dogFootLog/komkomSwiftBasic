//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 강수희 on 2022/11/02.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func back(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func back2(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
