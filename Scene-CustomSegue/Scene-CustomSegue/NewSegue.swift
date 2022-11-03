//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 강수희 on 2022/11/03.
//

import UIKit

class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        // 세그웨이 출발지 컨트롤러
        let srcUVC = source
        // 세그웨이 목적지 컨트롤러
        let destUVC = destination
        
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 10, options: .transitionCurlDown)
    }

}
