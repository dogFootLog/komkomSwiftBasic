//
//  FormViewController.swift
//  SubmitValue
//
//  Created by 강수희 on 2022/11/04.
//

import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
        /*
        let preVC = presentingViewController
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = email.text
        vc.paramUpdate = isUpdate.isOn
        vc.paramInterval = interval.value
        */
        
        // AppDelegate 객체의 인스턴스
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.paramEmail = email.text
        ad?.paramUpdate = isUpdate.isOn
        ad?.paramInterval = interval.value
        
        NSLog("onSubmit")
        
        presentingViewController?.dismiss(animated: true)
    }
    
}
