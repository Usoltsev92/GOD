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
 """, image: "newyear"),
           
           
           Holiday(name: "Ура пятница", dateComponents: DateComponents(month: 5, day: 29), greetingText: "Наконец то пятница и да прибудут выходные!", image: "y1"),
        
           Holiday(name: "А ленин всех послал", dateComponents: DateComponents(month: 5, day: 1), greetingText: " и пошли все нахуй", image: "y2"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 2), greetingText: "Happy Valentine's Day!", image: "y3"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 3), greetingText: "Happy Valentine's Day!", image: "y5"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 4), greetingText: "Happy Valentine's Day!", image: "y4"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 5), greetingText: "Happy Valentine's Day!", image: "y6"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 6), greetingText: "Happy Valentine's Day!", image: "y7"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 7), greetingText: "Happy Valentine's Day!", image: "y8"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 8), greetingText: "Happy Valentine's Day!", image: "y9"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 9), greetingText: "Happy Valentine's Day!", image: "y10"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 10), greetingText: "Happy Valentine's Day!", image: "y11"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 11), greetingText: "Happy Valentine's Day!", image: "y12"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 12), greetingText: "Happy Valentine's Day!", image: "y13"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 13), greetingText: "Happy Valentine's Day!", image: "y14"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 14), greetingText: "Happy Valentine's Day!", image: "y15"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 15), greetingText: "Happy Valentine's Day!", image: "y16"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 16), greetingText: "Happy Valentine's Day!", image: "y17"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 17), greetingText: "Happy Valentine's Day!", image: "y18"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 18), greetingText: "Happy Valentine's Day!", image: "y19"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 19), greetingText: "Happy Valentine's Day!", image: "y20"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 20), greetingText: "Happy Valentine's Day!", image: "y21"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 21), greetingText: "Happy Valentine's Day!", image: "y22"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 22), greetingText: "Happy Valentine's Day!", image: "y23"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 23), greetingText: "Happy Valentine's Day!", image: "y24"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 24), greetingText: "Happy Valentine's Day!", image: "y25"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 25), greetingText: "Happy Valentine's Day!", image: "y26"),
           
           Holiday(name: "Valentine's Day", dateComponents: DateComponents(month: 5, day: 27), greetingText: "Happy Valentine's Day!", image: "y27"),
           
           
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
