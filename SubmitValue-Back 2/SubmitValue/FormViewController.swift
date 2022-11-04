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
        // UserDefault 객체의 인스턴스를 가져온다
        let ud = UserDefaults.standard
        
        ud.set(email.text, forKey: "email")
        ud.set(isUpdate.isOn, forKey: "isUpdate")
        ud.set(interval.value, forKey: "interval")
        
        presentingViewController?.dismiss(animated: true)
    }
    
}
