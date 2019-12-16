//
//  ViewController.swift
//  practice_alert
//
//  Created by Yony on 2019/12/16.
//  Copyright © 2019 Jianny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //time interval 사용 위한
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var alertFlag = true

    @IBOutlet var nowDate: UILabel!
    @IBOutlet var pickDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let pickDateView = sender
        
        let formatter = DateFormatter() // date의 format을 만들어주는 메소드
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
//        var alertTime = formatter.string(from: pickDateView.date)
        pickDate.text = formatter.string(from: pickDateView.date)
       
    }
    
    @objc func updateTime() {
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        nowDate.text = formatter.string(from: date as Date)
        
        
        if (nowDate.text == pickDate.text){
            if !alertFlag {
                let caution = UIAlertController(title: "Caution", message: "This time is current time", preferredStyle: UIAlertController.Style.alert)
                   
                let cautionAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                   
                caution.addAction(cautionAction)
                present(caution,animated: true,completion: nil)
                alertFlag = true
            }
        } else {
            alertFlag = false
        }
    }
}

