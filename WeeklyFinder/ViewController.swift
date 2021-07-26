//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Константин Кириллов on 19.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var findDayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findDayButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func getDate(_ sender: UIButton) {
        
//        if let day = dateTF.text, let month = monthTF, let year = yearTF {
//
//        }
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else {
            return
        }
            
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        
        resultLabel.text = weekDay
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    


}

