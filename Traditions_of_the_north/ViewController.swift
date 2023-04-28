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
        // MARK: Январь
        Holiday(name: "Дни Тора и Вали", dateComponents: DateComponents(month: 1, day: 20), greetingText: """

         🌀Дни Тунара (то есть Тоpа) и Вали – традиционные семейные празднования. Символизм в том, что Бог Грозы Тор своим могучим молотом разгоняет тьму и ледяных гигантов. С 20 января по 18 февраля, в пик зимы, мы осознаем свою силу как народа, которая провела нас через жестокую зиму.
             День Вали – 14 февраля. Это праздник перерождения, также он связан с почитанием предков своего Рода. Это традиционно семейное торжество с обменом подарками.
""", image: "y1"),
     
        
        // MARK: Февраль
           Holiday(name: "Дистинг", dateComponents: DateComponents(month: 02, day: 02), greetingText: """
                   Дистинг, в более привычном скандинавском варианте — «Тинг дис». Он возвещает пробуждение жизненных сил, заснувших во время Зимней Ночи. Считается, что земля в это время готовится к приему новых семян. Также этот период называют символичным временем подготовки к грядущим событиям.
                   Имеет место перед началом сезона вегетации. Этот день символически представляет ухаживание Фрейра (плодородие) за девой Гёрд (Земля). Его целью было повышение будущего урожая. Он упоминается в саге Херварара, саге Вига-Глумс, саге об Эгилсе и Хеймскрингле. Празднование до сих пор продолжается в форме ежегодной ярмарки под названием Disting. До наступления праздника в жилище должно быть чисто. Так же чисты должны быть наши помыслы. И тогда чистые искренние желания, загадываемые в ночь с первого на второе февраля, могут исполниться.
 """, image: "newyear"),
           
           
        // MARK: Март
           Holiday(name: "Остара", dateComponents: DateComponents(month: 03, day: 20), greetingText: """
 🍀Открытие Лета. Это Весеннее Равноденствие, также известное как Остара, яркий и самый радостный в Тевтонском Году. Празднование возрождения и обновления. Вечный цикл представлен яйцом, символом плодородия, часто выкрашенным в разные цвета. В месяце апреле мы соблюдаем Сумарсдаг.
 """, image: "y2"),
           Holiday(name: "Остара", dateComponents: DateComponents(month: 03, day: 21), greetingText: """
 Весеннее Равноденствие, также известное как Остара, яркий и самый радостный в Тевтонском Году. Празднование возрождения и обновления. Вечный цикл представлен яйцом, символом плодородия, часто выкрашенным в разные цвета. В месяце апреле мы соблюдаем Сумарсдаг.
 """, image: "y2"),
        // MARK: Апрель
        Holiday(name: "Сумарсдаг", dateComponents: DateComponents(month: 4, day: 11), greetingText: """
                
 🍀Сумарсдаг. Третий четверг апреля. Означает первый день лета.
 Прославляется Один, Всеотца благодарят за то, что разрешил насладиться летом и принес свет и тепло.
 Можно подносить дары и они будут приняты.

""", image: "y27"),
        
        Holiday(name: "🧙🏼‍♀️Бельтан", dateComponents: DateComponents(month: 4, day: 30), greetingText: """
                
 Вальпургиева Ночь – известна как «Майский Канун» или Бельтан. Посвященный плодородию, началу весны. Древние кельты верили, что в этот день открываются врата в другой мир, в страну эльфов, гномов и прочих волшебных существ.
 Согласно Тевтонской мифологии церемонии этого языческого фестиваля «Майский Канун» творились во славу Фрейра и Фрейи.
""", image: "y27"),
        
        // MARK: Май
           
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
           
        
           Holiday(name: "🧙🏼‍♀️Вальпургиева Ночь", dateComponents: DateComponents(month: 5, day: 1), greetingText: """
                   
    В ночь с 30 на 1 мая колдовство на любовь, деторождение и богатый урожай имеет наибольшую силу. Так же совершаются ритуалы на защиту людей от злых духов. Считается, что в это время духи близки к людям, а магическая энергия земли велика.

🍀1 мая – «Майский День», Бельтан. Первый день месяца мая, это время великих празднований в отмечании рождения жизни. Как время игр и хорошей компании. Живин день (Бельтан) - Праздник тысячи Огней, костров, танцев. В этот день просыпается стихия Земля.
Бельтан – это лучшее время для начала активных действий, веселья, любовных ритуалов и возрождения надежд. Это время обретения сил и осуществления желаний.
""", image: "y27"),
        // MARK: Июнь
           Holiday(name: "Альтинг 🌞", dateComponents: DateComponents(month: 6, day: 20), greetingText: """
                   
   Середина лета. Самый долгий день и самая короткая ночь года. В древние времена Летнее Солнцестояние было традиционным временем для годового схода, альтинга. Значимый и почитаемый бог Середины лета это Бальдр, сын Одина.
""", image: "y27"),
           
           Holiday(name: "Альтинг 🌞", dateComponents: DateComponents(month: 6, day: 21), greetingText: """
                   
   Середина лета. Самый долгий день и самая короткая ночь года. В древние времена Летнее Солнцестояние было традиционным временем для годового схода, альтинга. Значимый и почитаемый бог Середины лета это Бальдр, сын Одина.
""", image: "y28"),
        // MARK: Июль
        // MARK:  Август
           
           Holiday(name: " Фрей Факси", dateComponents: DateComponents(month: 8, day: 28), greetingText: """
                   
  Фрей Факси. Праздник урожая в Исландии и Скандинавии. Один из обычаев праздника включал в себя конные состязания и почитание Фрейра. Фрей Факси или «Грива Фрейра» бросает вызов и символически превосходит оппонента.
""", image: "y28"),
        // MARK: Сентябрь
           
           Holiday(name: " Открытие Зимы", dateComponents: DateComponents(month: 9, day: 20), greetingText: """
                   
 🌀Открытие Зимы. Празднование осеннего равноденствия отмечает конец сезона урожая. Это величайший из праздников Урожая для северного народа.
""", image: "y28"),
           
           Holiday(name: " Открытие Зимы", dateComponents: DateComponents(month: 9, day: 21), greetingText: """
                   
 🌀 Открытие Зимы. Празднование осеннего равноденствия отмечает конец сезона урожая. Это величайший из праздников Урожая для северного народа.
""", image: "y28"),
        // MARK:  Октябрь
           Holiday(name: " Зимние Ночи ", dateComponents: DateComponents(month: 10, day: 14), greetingText: """
                   
 Зимние Ночи. Праздник отмечающий конец урожая и сбора, привлекающий внимание к щедрости и славе богини Фрейи. Приносился в жертву скот. Мясо запасали или употребляли в пищу на праздник.
""", image: "y28"),
           
           Holiday(name: " Зимние Ночи ", dateComponents: DateComponents(month: 10, day: 15), greetingText: """
                   
 🌀Зимние Ночи. Праздник отмечающий конец урожая и сбора, привлекающий внимание к щедрости и славе богини Фрейи. Приносился в жертву скот. Мясо запасали или употребляли в пищу на праздник.
""", image: "y2"),
        // MARK: Ноябрь
           Holiday(name: " День Эйнхериев ", dateComponents: DateComponents(month: 11, day: 11), greetingText: """

🌀День Эйнхериев. День поминовения погибших в бою, на войне. Праздник Эйнхериар отмечается ежегодно 11 ноября. Назван этот день в честь эйнхериев. Эйнхерии — души убитых в битве воинов. По скандинавской мифологии, они подчиняются великому богу войны, шаману Одину, а обитают в воинском рае Вальхалле.
В этот день кубок пенный поднимался за предков в каждом роду скандинавском, которые нечто героическое совершили, например: "Выпьем за деда, который род наш не опозорил и зад противнику в бою не подставил!
""", image: "y2"),
        
        // MARK: Декабрь
           
           Holiday(name: "Мать ночь", dateComponents: DateComponents(month: 12, day: 20), greetingText: """

🌀31 декабря - Ночь Йоля. Период Зимнего солнцестояния. Святейший праздник Тевтонского года, начинающийся в ночь с 20 на 21 декабря. Это последующие 12 ночей и кульминация в новый год.


Первая ночь Йоля - «Мать ночь», чтит Фрейю. Считалось, что нет более верных знамений, чем те, что были явлены во время Двенадцатой Ночи и самые сильные слова те, что сказаны в эту ночь.
По современному календарю Йоль начинается в ночь с 19 на 20 декабря – это Начальная Ночь Йоля («нулевая» по счету ночь).
Затем идет 1-я (с 20 на 21 декабря) Ночь - материнская, 2-я (21-22 декабря) - Ночь Зимнего Солнцестояния,

 3-я ночь - Рождение нового Солнца, согласно колесу года, 4-я - ... и так до заключительной самой волшебной Ночи Йоля - 12-й (Новогодней).
Все 13 ночей, от первого заката солнца и до последнего рассвета, – брешь между двумя годами, сакральный период, в течение которого нет ни привычного времени, ни привычных границ, когда вершиться жребий богов и вращается веретено богини Судьбы - Урд.

Помимо общения, гуляний и пиров, в это время совершалось множество языческих религиозных обрядов, способствовавших сплочению рода, осознанию его как единого целого, обеспечению успешного будущего всему роду и каждому родичу отдельно.

""", image: "y2"),
           
           Holiday(name: "Йоль", dateComponents: DateComponents(month: 12, day: 31), greetingText: """

«Йоль» в переводе со скандинавского означает «вращаться», по другой версии — происходит от «Йоль-мир», одного из имен Одина. В большинстве культур Древнего языческого Мира зимнее солнцестояние люди считают праздником рождения божества (Митры, Эдипа, храброго Геркулеса). В честь праздника Йоль написана даже шекспировская комедия «12-я ночь».
Йоль: вкусные ритуалы и приметы, которые мы заслужили
Ритуалы и обряды праздника Йоль в основном переплетаются с культом плодородия, благословением пищи, урожая. С давних пор в зимнее солнцестояние (Йоль) пахнет гвоздиками и яблоками, пшеницей и ветвями хвойных деревьев. Зимнее солнцестояние — как корзина с необычными приметами и ритуалами, в которую интересно заглядывать 13 магических ночей подряд, вытаскивая символы:

ветви олицетворяют бессмертие
пшеница — символ урожая
яблоки — прообраз солнца
мука — успех в делах.

Перед новогодней ночью кроме нарядной елки стоит обзавестись остролистом, плющом и омелой, как символами мира в праздник Йоль. Оставьте немного пищи приходящим духам предков, и поспите эти ночи на полу, уступая постель посетителям иного мира.

Сытно и не стыдно — ритуал очищения
В Йоль существует много кулинарных ритуалов. Неизменной традицией остается пышный праздничный стол, почти пир с ритуальной пищей. На нем не обойтись без пшеничного хлеба, салатов с бобами и горохом, булочек с маком или бутербродов с икрой. Королевой стола считается свинина, и только в Исландии — это королевский жареный баран.
Ритуал похода в баню, сауну в йольский праздник обязательно проводится всей семьей или дружной компанией, чтобы предстать чистыми душой и телом в предстоящем году. Зимнее Солнцестояние — время очищения и гармонии, когда Солнце находится как будто «под землей» для всех северных народов, далеко от зенита.

Зажигая огни в Йоль
Праздник Йоль, как и Рождество, связан со светом, огнем. Если день летнего солнцестояния Лита ассоциируется с кульминацией силы Бога, то день зимнего солнцестояния — с завершением еще одного цикла, перерождением. В стародавние времена люди поджигали колеса, символизирующие Тора, оборачивали их сеном, и спускали с холмов в долины. Этот ритуал не менее впечатляющий, нежели бенгальские огни и фейерверки.

Деревянный ритуал: йольское полено
Поиграем в папу Карло? Когда еще удастся сжечь тяжелый дубовый чурбан, как не в Йоль? По древней традиции во время зимнего солнцестояния полено из ясеня украшали ягодами, растениями. Его обсыпали мукой, брызгали сидром, кидали в печь и ждали 12 ночей, пока оно не превратиться в золу, которую позже развеивали над полями для хорошего урожая. Пепел от полена считался целительным, поэтому большинство ритуалов связано именно с ним. Шли столетия, как «йольское полено» превратилось в рождественское лакомство.
...и шерстяные обновки
Символика праздника Йоль уж сильно напоминает рождественскую атмосферу. В день зимнего солнцестояния в домах люди вешают вечнозеленые прутья, хвойные ветви, падуб, плющ, а на столы выставляют золотые свечи, корзины с фруктами. На плите обязательно стоит кипящий котелок с элем, молочай, а в руках вы уже держите пару теплых носков, вязаный свитер, мягкие варежки в подарок близкому человеку.

Басни про Бабая в праздник Йоль
Кстати, о «шерстяных котах»! В зимнее солнцестояние, когда ночь убаюкивает так долго, детей часто пугают Йольским Котом. Шотландцы считают, что если в Йоль не запереть все окна, не надеть теплую шерстяную кофту, то тебя утащит усатый, хвостатый кот. Бог знает, как он выглядит в голове напуганного ребенка



""", image: "y2"),
           
           
           
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
