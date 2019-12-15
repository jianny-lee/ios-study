//
//  ViewController.swift
//  practice_datePicker
//
//  Created by Yony on 2019/12/15.
//  Copyright © 2019 Jianny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0 // 타이머의 간격 값
    var alarmTime : String!
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender //sender라는 UIDatePicker의 자료형 인수가 datePickerView 변수로 저장
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "Picker Time: " + formatter.string(from: datePickerView.date)
        alarmTime = formatter.string(from: datePickerView.date)
        if (lblCurrentTime.text == lblCurrentTime.text) {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblCurrentTime.text = "Current Time: " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date)
        
        if(alarmTime == currentTime){
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
}

