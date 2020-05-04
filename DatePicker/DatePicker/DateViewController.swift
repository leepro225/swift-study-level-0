//
//  ViewController.swift
//  DatePicker
//
//  Created by hrobotics on 2020/04/06.
//  Copyright © 2020 eunGyeolLee. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var IblCurrentTime: UILabel!
    @IBOutlet var IblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickterView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm EEE"
        IblPickerTime.text = "선택시간: " + formatter.string(from: datePickterView.date)
    }
    
    @objc func updateTime() {
        // IblCurrentTime.text = String(count)
        // count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss EEE"
        IblCurrentTime.text = " 현재시간: " + formatter.string(from: date as Date)
    }
}

