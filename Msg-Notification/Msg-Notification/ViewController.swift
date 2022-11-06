//
//  ViewController.swift
//  Msg-Notification
//
//  Created by 강수희 on 2022/11/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var msg: UITextField!
    @IBOutlet var datepicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        if #available(iOS 10, *) {
            UNUserNotificationCenter.current().getNotificationSettings(completionHandler: { settings in
                if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                    DispatchQueue.main.async {
                        let nContent = UNMutableNotificationContent()
                        nContent.body = self.msg.text!
                        nContent.title = "미리 알림"
                        nContent.sound = UNNotificationSound.default
                        
                        // 발송 시각을 '지금으로부터 *초 형식'으로 변환
                        let time = self.datepicker.date.timeIntervalSinceNow
                        // 발송 조건 정의
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                        
                        let request = UNNotificationRequest(identifier: "alarm", content: nContent, trigger: trigger)
                        UNUserNotificationCenter.current().add(request) { (_) in
                            DispatchQueue.main.async {
                                let date = self.datepicker.date.addingTimeInterval(9*60*60)
                                let message = "알림이 등록되었습니다. 등록된 알림은 \(date)에 발송됩니다."
                                
                                let alert = UIAlertController(title: "알림등록", message: message, preferredStyle: .alert)
                                let ok = UIAlertAction(title: "확인", style: .default)
                                alert.addAction(ok)
                                
                                self.present(alert, animated: false)
                            }
                        }
                    }
                } else {
                    let alert = UIAlertController(title: "알림 등록", message: "알림이 허용되어 있지 않습니다", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "확인", style: .default)
                    alert.addAction(ok)
                    
                    self.present(alert, animated: false)
                    return
                }
            })
        }
    }
    
}

