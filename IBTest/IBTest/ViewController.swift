//
//  ViewController.swift
//  IBTest
//
//  Created by 강수희 on 2022/10/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle01: UILabel!
    @IBAction func clickBtn01(_ sender: Any) {
        self.uiTitle01.text = "Button1 clicked"
    }
    
    @IBOutlet var uiTitle02: UILabel!
    @IBAction func clickBtn02(_ sender: Any) {
        uiTitle02.text = "Button2 clicked"
    }
    
    @IBOutlet var uiTitle03: UILabel!
    @IBAction func clickBtn03(_ sender: Any) {
        uiTitle03.text = "Button3 clicked"
    }
    
    @IBOutlet var uiTitle04: UILabel!
    @IBAction func clickBtn04(_ sender: Any) {
        uiTitle04.text = "Button4 clicked"
    }
    
    @IBOutlet var uiTitle05: UILabel!
    @IBAction func clickBtn05(_ sender: Any) {
        uiTitle05.text = "Button5 clicked"
    }
    
}

