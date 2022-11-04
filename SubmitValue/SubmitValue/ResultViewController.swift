//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 강수희 on 2022/11/04.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail = ""
    var paramUpdate = false
    var paramInterval = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultEmail.text = paramEmail
        resultUpdate.text = paramUpdate ? "자동갱신" : "자동갱신안함"
        resultInterval.text = "\(paramInterval)분마다 갱신"
    }

    @IBAction func onBack(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
}
