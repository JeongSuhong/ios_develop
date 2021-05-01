//
//  ViewController.swift
//  ios_develop
//
//  Created by Suhong Jeong on 2021/05/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currentTimeLabel: UILabel!
    @IBOutlet var selectTimeLabel: UILabel!
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var selectTime = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        selectTime = datePickerView.date
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        selectTimeLabel.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        checkSelectTime(date: NSDate() as Date)
    }
    
    @objc func updateTime() {
//        currentTimeLabel.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentTimeLabel.text = "현재시간: " + formatter.string(from: date as Date)
    
        checkSelectTime(date: date as Date)
    }
    
    
    func checkSelectTime(date: Date) {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        view.backgroundColor = formatter.string(from: date) == formatter.string(from: selectTime) ? #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1) : .white
    }
    
}

