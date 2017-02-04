//
//  ViewController.swift
//  TimeTrackerApp
//
//  Created by Enoch Ko on 2/3/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studyingTextfield: UITextField!
    @IBOutlet weak var socializingTextfield: UITextField!
    @IBOutlet weak var electronicsTextfield: UITextField!
    @IBOutlet weak var sleepingTextfield: UITextField!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var studyingLabel: UILabel!
    @IBOutlet weak var socializingLabel: UILabel!
    @IBOutlet weak var electronicsLabel: UILabel!
    @IBOutlet weak var sleepingLabel: UILabel!
    @IBOutlet weak var averageStudyingLabel: UILabel!
    @IBOutlet weak var averageSocializingLabel: UILabel!
    @IBOutlet weak var averageElectronicsLabel: UILabel!
    @IBOutlet weak var averageSleepingLabel: UILabel!
    @IBOutlet weak var notificationLabel: UILabel!
    
    var trackerApp:Tracker = Tracker()
    override func viewDidLoad() {
        super.viewDidLoad()
        studyingTextfield.text = "0"
        socializingTextfield.text = "0"
        electronicsTextfield.text = "0"
        sleepingTextfield.text = "0"
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.studyingTextfield.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let studyingHours = Double(studyingTextfield.text!)!
        let socializingHours = Double(socializingTextfield.text!)!
        let electronicsHours = Double(electronicsTextfield.text!)!
        let sleepingHours = Double(sleepingTextfield.text!)!
        let newDay:Day = Day(studyingHours: studyingHours, socializingHours: socializingHours, electronicsHours: electronicsHours, sleepingHours: sleepingHours )
        trackerApp.addDay(day: newDay)
        notificationLabel.text = "New Day was added successfully!"
        studyingTextfield.text = "0"
        socializingTextfield.text = "0"
        electronicsTextfield.text = "0"
        sleepingTextfield.text = "0"
        
        daysLabel.text = String(trackerApp.returnDayNumber())
        studyingLabel.text = String(trackerApp.calculateStudyingTotalTime())
        socializingLabel.text = String(trackerApp.calculateSocializingTotalTime())
        electronicsLabel.text = String(trackerApp.calculateElectronicsTotalTime())
        sleepingLabel.text = String(trackerApp.calculateSleepingTotalTime())
        
        averageStudyingLabel.text = String(trackerApp.calculateStudyingAverageTime())
        averageSocializingLabel.text = String(trackerApp.calculateSocializingAverageTime())
        averageElectronicsLabel.text = String(trackerApp.calculateElectronicsAverageTime())
        averageSleepingLabel.text = String(trackerApp.calculateSleepingAverageTime())
        

        
    }

    @IBAction func clearButton(_ sender: UIButton) {
        studyingTextfield.text = "0"
        socializingTextfield.text = "0"
        electronicsTextfield.text = "0"
        sleepingTextfield.text = "0"
        
    }

}

