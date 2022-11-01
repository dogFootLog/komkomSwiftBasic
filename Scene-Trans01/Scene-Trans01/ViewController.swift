//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 강수희 on 2022/11/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        // 스토리보드 파일이 프로젝트에 여러 개 존재하는 경우 UIStoryboard 초기화 과정에서 원하는 파일을 직접 지정
        // "Main" -> *.storyboard이므로 확장자 생략
        // Bundle.main -> 스토리보드 파일을 읽어들일 위치
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // 스크린에 새로 표시할 뷰 컨트롤러를 스토리보드로부터 읽어와 인스턴스화
        let uvc = storyboard.instantiateViewController(withIdentifier: "SecondVC")
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        present(uvc, animated: true)
    }
    
}

