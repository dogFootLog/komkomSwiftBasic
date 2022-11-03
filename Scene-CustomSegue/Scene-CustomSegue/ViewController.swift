//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by 강수희 on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // print("세그웨이가 곧 실행됩니다: \(segue.identifier!)")
        
        if (segue.identifier=="custom_segue") {
            NSLog("커스텀 세그웨이가 실행됩니다")
        } else if (segue.identifier=="action_segue") {
            NSLog("액션 세그웨이가 실행됩니다")
        } else {
            NSLog("알 수 없는 세그웨이입니다")
        }
    }

}

