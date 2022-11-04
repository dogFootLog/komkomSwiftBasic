//
//  ViewController.swift
//  SubmitValue
//
//  Created by 강수희 on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    /*
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("view did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NSLog("view will appear")
        
        /*
        if let email = paramEmail {
            resultEmail.text = email
        }
        if let update = paramUpdate {
            resultUpdate.text = update ? "자동갱신" : "자동갱신안함"
        }
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
        */
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
            resultEmail.text = email
        }
        if let update = ad?.paramUpdate {
            resultUpdate.text = update ? "자동갱신" : "자동갱신안함"
        }
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
}
