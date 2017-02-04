//
//  ViewController.swift
//  TimeTrackerApp
//
//  Created by Enoch Ko on 2/3/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studyTextfield: UITextField!
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveButton(_ sender: UIButton) {
    }

    @IBAction func clearButton(_ sender: UIButton) {
    }

}

