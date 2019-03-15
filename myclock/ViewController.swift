//
//  ViewController.swift
//  myclock
//
//  Created by administrator on 2018/05/16.
//  Copyright © 2018年 administrator. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var Label2: NSTextFieldCell!
    @IBOutlet weak var Label1: NSTextFieldCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        timerUpdate()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerUpdate), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func timerUpdate() {
        let date = NSDate()
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        let component = calendar.components([
            .year,
            .month,
            .day,
            .weekday,
            .hour,
            .minute,
            .second
            ], from: date as Date)
        let weekday: Array = ["日", "月", "火", "水", "木", "金", "土"]
        
        let year = "\(component.year!)"
        let month = String(format: "%02d", component.month!)
        let day = String(format: "%02d", component.day!)
        let dayOfTheWeek = "\(weekday[component.weekday! - 1])"
        let hour = String(format: "%02d", component.hour!)
        let min = String(format: "%02d", component.minute!)
        //let sec = String(format: "%02d", component.second!)
        Label2.stringValue = "\(year)年\(month)月\(day)日(\(dayOfTheWeek))"
        //Label1.stringValue = "\(hour) : \(min) : \(sec)"
        Label1.stringValue = "\(hour) : \(min)"
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

