//
//  ViewController.swift
//  Traditions_of_the_north
//
//  Created by Александр Усольцев on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabelOutlet: UILabel!
    @IBOutlet weak var holidayNameLabelOutlet: UILabel!
    @IBOutlet weak var holidayDatePickerOutlet: UIDatePicker!
    @IBOutlet weak var holidayImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        let calendar = Calendar.current
                let year = calendar.component(.year, from: Date())
                setupHolidayGreeting(year: year)
       }
           
       func isSameDate(_ date1: Date, _ date2: Date) -> Bool {
           let calendar = Calendar.current
           return calendar.isDate(date1, equalTo: date2, toGranularity: .day)
       }
           
       struct Holiday {
           let name: String
           let dateComponents: DateComponents
           let greetingText: String
           let image: String?
       }
           
       let arrayHolidays = [
           Holiday(name: "Halloween", dateComponents: DateComponents(month: 04, day: 26), greetingText: "Happy Halloween!", image: "halloween"),
           Holiday(name: "New Year", dateComponents: DateComponents(month: 4, day: 27), greetingText: "Happy New Year!", image: "newyear"),
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 4, day: 28), greetingText: "Happy Valentine's Day!", image: "valentine")
       ]
           
       func setupHolidayGreeting(year: Int) {
           let calendar = Calendar.current
           let selectedDate = holidayDatePickerOutlet.date
               
           for holiday in arrayHolidays {
               var components = holiday.dateComponents
               components.year = year
               if let date = calendar.date(from: components), isSameDate(date, selectedDate) {
                   DispatchQueue.main.async {
                       self.greetingLabelOutlet.text = holiday.greetingText
                       self.holidayNameLabelOutlet.text = holiday.name
                           
                       if let imageName = holiday.image {
                           self.holidayImageViewOutlet.image = UIImage(named: imageName)
                       } else {
                           self.holidayImageViewOutlet.image = nil
                       }
                   }
                   return
               }
           }
       }
       
//       @IBAction func datePickerChanged(_ sender: UIDatePicker) {
//           let calendar = Calendar.current
//           let year = calendar.component(.year, from: sender.date)
//           setupHolidayGreeting(year: year)
//       }
       
   }
