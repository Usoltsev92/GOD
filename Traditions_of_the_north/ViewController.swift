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
           Holiday(name: "Всего лишь четверг", dateComponents: DateComponents(month: 04, day: 27), greetingText: """
                   Но для тебя это может быть самым лучшим четвергом! ведь сегодня можно попить кофе и даже лечь пораньше поспать! прийти домой покушать и понимать что тренировки прошли не зря, ведь мышци ростут и каждый день ты становишься сильнее и лучшей версией себя а еще твое приложение работает с каждым днем все лучше и солнышко согревает землю. Скоро будет намного теплее и зеленее и вся серзость вокруг будет не такой уебанской как мы привыкли ее видеть и чем больше ты в россии тем больше ты привыкаешь к тому что ты в дерьме! и со временем ты забываешь как могут выглядеть номральные дороги, как могут выглядеть нормальные люди, что цены могут быть адекватные и соседи не срут в лифте и не тушат бычки в стенку подьезда. постарайся свалить ищ страны как можно скорее и заплатите ведьмаку чеканной монетой чеканнойй монетой чеканной монетой монетой монетой и мне тоже заплатите что б я уехал туда где можно жить лучше и счастливие что б моя женушка не болела и все в жизни сразу стало перкрасно , поскорей бы выучить свифт и бежать из блятской страны
 """, image: "halloween"),
           
           
           Holiday(name: "New Year", dateComponents: DateComponents(month: 5, day: 27), greetingText: "Happy New Year!", image: "newyear"),
           
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 6, day: 28), greetingText: "Happy Valentine's Day!", image: "valentine")
       ]
           
       func setupHolidayGreeting(year: Int) {
           let calendar = Calendar.current
           let selectedDate = holidayDatePickerOutlet.date
               
           for holiday in arrayHolidays {
               var components = holiday.dateComponents
               components.year = year
               if let date = calendar.date(from: components), isSameDate(date, selectedDate) {
                   DispatchQueue.main.async {
                       self.greetingLabelOutlet.text = holiday.name
                       self.holidayNameLabelOutlet.text = holiday.greetingText
                           
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
   }
