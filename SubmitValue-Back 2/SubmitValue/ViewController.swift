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
        // UserDefault 객체의 인스턴스를 가져옴
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update ? "자동갱신" : "자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
    }
}
