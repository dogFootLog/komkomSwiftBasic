//
//  ViewController.swift
//  SubmitValue
//
//  Created by 강수희 on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn) {
            isUpdateText.text = "갱신함"
        } else {
            isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        intervalText.text = "\(value)분마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        // VC2의 인스턴스 생성 과정
        guard let rvc = storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = email.text!
        rvc.paramUpdate = isUpdate.isOn
        rvc.paramInterval = Int(interval.value)
        
        navigationController?.pushViewController(rvc, animated: true)
    }
}

