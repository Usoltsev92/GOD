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
        
        greetingLabelOutlet.layer.cornerRadius = 0 // выберите радиус, который вам нужен
            greetingLabelOutlet.clipsToBounds = true
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
""", image: "1"),
     
        Holiday(name: "Имблок", dateComponents: DateComponents(month: 1, day: 20), greetingText: """
Имболк – старинный кельтский праздник. С древнеирландского «Imbolc» переводится «в молоке». В разных источниках название интерпретируется, как «во чреве матери», «овечье молоко» и «очищающий ливень». Имболк представляет вариации одного события – приход весны, что еще скрывается покровом лютой зимы. У разных религий это  Сретенье, Громница, Оймелк, Праздник Пана, Факелов, Луперкалия, День Бригитты, Фестиваль Подснежников, День Сурка и японский Сэцубун. Поэтому отмечают его и ведьмы, колдуны или последователи традиций Викки, Нью-Эйдж и не подозревающие истинной сути обычные жители разных стран

Когда празднуют Имболк приходит через равные промежутки времени после Йоля и перед Остарой. С него начинается цикл из восьми праздников текущего года. Астрономически в этот период Солнце проходит с 10 по 15 градус созвездия Водолея, что соответствует календарным датам с 29 января по 4 февраля. Виккиане традиционно празднуют Имболк 1–2 февраля – в серединной точке между зимним солнцестоянием и весенним равноденствием. В это время, когда режим зимней спячки сменяется пробуждением природы. Imbolc соответствует первому саббату из второго Магического креста. Посвящается он богине Бригите, которая на Самайн принесла себя в жертву ради рождения бога. Имболк – момент выздоровления богини, и это не просто очередной точкой Силы, но момент очищения перед обновлением. Древние кельты считали ночные часы важнее дневных. Да и отсчет времени вели не с полуночи, как сегодня, а с полудня. Потому нет ничего удивительного в том, что празднование Имболка начинается с вечера 1 февраля. Сопряженное с огненными шоу, шабашами, пиршествами, личными и коллективными ритуалами торжество длится всю ночь и весь следующий день.
Праздник посвящается триединой богине Бригит, о коей люди сложили немало легенд. Согласно одной, она родилась с пламенем на голове. Этот огонь не обжигает и не карает, он приносит облегчение, дарит надежду, исцеление, очищает душу, помогает человеку раскрыть собственные таланты, обрести мудрость и вдохновение. Бригита считается покровительницей кузнечного ремесла, врачевания, семейного очага, поэзии, материнства, дома. Согласно христианским мифам, Святая принимала роды у самой Девы Марии. Другая легенда рассказывает, что она основала аббатство Cill Dara на месте древнего друидского святилища. До ХVI века в в нем постоянно поддерживался живой огонь. Но потом аббатство закрыли. В 1993 году благодаря сестринству Brigidine Sisters огонь зажгли вновь. В викканской традиции это Бригита родила бога и к Имболку оправилась от родов, но продолжает кормить грудью. Растить, воспитывать юного бога помогают домашние духи. Дитя набирает силы, а вместе с ним становится сильнее и могущественнее мать. Легенда описывает рождение нового Солнца, что с каждым днем все сильнее согревает землю и пробуждает к новой жизни.
Имблок — праздник Огня Как и другие праздники, Колеса года Имболк связывают огнем. Но костры Самайна считаются погребальными, на Белтейн разжигают пламя страсти, а йольские фонари символизируют огонек надежды, а свечи Имболка дают очищение и возрождение. На смену cтарухе в черном приходит невеста в белоснежном одеянии. Чтобы указать деве путь из тьмы, и зажигаются огни.
В эту ночь на улице разводят костры, устраивают факельные шествия, фестивали огня. В доме после заката устанавливают на подоконниках свечи, где они горят до рассвета. Для этих целей используют и керосиновые лампы с красными стеклами. Имблок – не праздник одного дня. Он открывает целую неделю, что используют для накопления силы и раскрытия внутреннего потенциала. На него заранее приобретают семь свечей всех цветов радуги и зажигают по одной каждый вечер.

Что делают на Имболк
Ввиду пробуждения природы Имболк считается первым в году праздником плодородия. Это время для ритуалов на обильный урожай, прибыль, приобретение. В ночь с 1 на 2 февраля хорошо раскачиваются застойные ситуации в делах, бизнесе, любви. В начале февраля просыпаются духи природы, пришло время наладить контакт с домовым и разными сущностями, проводить магические обряды на погосте, обращаться к кладбищенским духам и хозяйке кладбища – одной из ипостасей Бригит. На конец января – начало февраля приходится отел домашнего скота, потому Имболк считается праздником молока. Оно хорошее подспорье, когда в погребах иссякают запасы летнего урожая. По этой причине во многих ритуалах используется молоко, а на стол подаются приготовленные из этого продукта блюда. На Имблок нельзя работать, заниматься рукоделием, сексом, пить спиртное. Посещают престарелых родственников, помогают с уборкой и готовкой. Обязательно окропить водой (талой) всех домочадцев, включая домашних питомцев, чтобы обеспечить им защиту и благополучие. Вариации праздника у других народов Праздник, что посвящается первым проблескам весны, присутствует в культурах разных народов. Древние римляне проводили церемонию Луперкалии, ныне она нашла отражение в Дне святого Валентина. Славянские народы отмечали Громницу, или День медведя. Если 1–2 февраля медведи просыпались и выходили из берлоги, то зиме пришел конец. Эта традиция, но в измененном виде соблюдается и сегодня.

Еще один современный праздник, что имеет сходство с празднованием Имболка, – Масленица. Символика Алтарь В Имболк обряды и ритуалы проводятся в специальном месте, на алтаре. Его украшают покрывалом, что сочетает белый и красный/желтый цвета. Первый символизирует снежный покров, второй – кровь/восходящее солнце.  На покрытый алтарь ставят любые растения, что ассоциируются с ростом (горшок с луковицей цветка), графин или чашу со снегом или талой водой. Что еще устанавливают на алтаре: миниатюрную наковальню, молот; крест Бригиты, хлебных куколок; статую богини; целебные травы; выпечку, что приготовлена на молоке; стихи собственного или чужого сочинения; свечи, котел с огнем; любой кельтский декор.
Свечи – оранжевого цвета, подойдут красные, желтые или белые – натирают маслом муската, корицы, ладана, розмарина. Дом или одну комнату декорируют лентами, цветами белого, желтого, оранжевого оттенков. Одеваются в свободную светлую или белую одежду. Волосы украшают красными, оранжевыми лентами. Крест Бригиды, хлебные куколки и кельтские узлы Любые амулеты выполняются самостоятельно 1 февраля. Недопустимо прерывать работу.
Крест Бригиды считается солярным символом не только потому, что его лучи смещаются от центра. Бригида непросто покровительница домашнего очага. Ее свзывают с возрождением природы, весной, Солнцем, теплом. Имблок в Колесе года располагается напротив праздника урожая Лугнасада, поэтому подходящий материал для оберега – пшеничные колоски или солома. Для связки используют льняные нитки или тонкие ленты. Из колосков делают хлебных куколок. Все освящают на Имблока. Тогда весь год они будут защищать от: любых природных катаклизмов; буйства домашних духов; проникновения извне темных сил; неупокоенных душ; негативно настроенных людей. Кресты вешают над входными дверями и окнами, куколок друг против друга: мужскую со стороны юга или востока, женскую – с севера или запада. Когда у ребенка есть проблемы со сном и засыпанием, крест подвешивают над детской кроваткой. К богине Бригид обращаются для защиты и выздоровления детей. Кресты даруют роженицам легкие роды. В этот день занимаются и плетением кельтских узлов для амулетов и талисманов. Дело это непростое и кропотливое, потренируйтесь заранее, чтобы в день Х не возникло трудностей. Любые заминки при изготовлении магических артефактов сказываются на их силе. Обряды в Имболк На Имболк пробуждается и природа, и все энергии материального мира. Энергия праздника богини Бригиты восстанавливает и очищает загрязненное пространство, влияет на смягчение людских сердец. Чтобы впустить таковую в собственный дом, тело душу, очиститесь от негатива, что накопился за год.
Очищение дома Перед праздником обязательно делают генеральную уборку, выносят то ненужное, что есть в доме. После исполняют ритуал. Понадобится: вода; морская соль; пучок шалфея: масло ладана, розмарина; голубая свеча. Для очистительного обряда смешивают воду и соль в емкости и зажигают свечу. Проходятся по всем комнатам (по часовой стрелке) и смачивают пучок травы в соленой жидкости окропляют поверхности со словами: «С очищающей силой воды, с чистым дыханием воздуха, со страстным жаром огня, с заземляющей энергией земли я очищаю это пространство». После слегка смазывают маслом подоконники и двери или рисуют защитные символы. Процесс сопровождается заклинанием: «Пусть Богиня благословит этот дом, сделав его священным и чистым, чтобы только любовь и радость могли войти через эту дверь/окно». Ритуал очищения тела Обязательно совершить ритуальное омовение. Ванную комнату украсьте декоративными или живыми цветами, зажгите белые и зеленые свечи, аромалампу с можжевельником. Когда принимаете ванну, расслабьтесь и сконцентрируйтесь на будущих изменениях природы. Мылом возьмите зеленого цвета, а вытирайтесь белоснежным полотенцем. Время духовного очищения Это пора, чтобы пересмотреть все планы, выкинуть из головы несущественные желания, задать четкое направление на будущее. В этом поможет специальный ритуал. Понадобится желтая свеча, белые, розовые или желтые цветы, лист бумаги, ручка. И действуйте по пунктам: Сделайте магический круг и призовите Бригиту. Выскажите вслух намерение – осознайте истинные цели и желания. Зажгите свечу, сядьте и глядите на нее. Призовите Бригиту, предложить дары, попросите помощи. Сконцентрируйтесь на пламени и руках одновременно, перейдите в измененное состояние. Закройте глаза и мысленно войдите в пламя свечи. Опять призовите богиню в помощь. Обратитесь к собственной душе, выскажите одно желание или цель. Дождитесь ответа (мысль, визуальный образ, приятные или неприятные ощущения). Запрещается анализировать, критиковать, приводить разумные доводы. Нужна полная отстраненность и отключение ума. Все важные цели и желания запишите заранее на листке. Поблагодарите душу, вернитесь к реальности. Обратитесь к богине, чтобы благословила намерения на быструю и благополучную реализацию. Поблагодарите за содействие и закройте круг. Молитва про хранение пламени Есть немало заговоров, что лучше оказывают действие в Имблок. Прочитайте молитву Бригид: «Могучая Бригид, хранительница пламени, пылающая в темноте зимы. О богиня, мы чтим тебя, несущую свет,  целительный и возвышенный. Благослови же нас ныне, Мать очага, дабы мы были столь же плодородны, как и сама почва, и наша жизнь стала изобильна и плодородна». Ритуалы на Имболк со свечами В ночь на 2 февраля эффективнее действуют магические действа с использованием огня. Для ритуала Бригит, что направлен на привлечение силы, подготовьте 19 тонких свечей белого цвета. Перед самим действом благословите их на алтаре словами: «Благословенно будь, создание Огня! Яркое пламя, греющее, а не сжигающее, Символ Света, а не Всесожжения, Яркий свет в темноте магической ночи. Во имя Бога и Богини, Да будет так». После возьмите свечи и по одной ставить на алтарь, каждую сопровождайте собственным заклинанием:
«Первая свеча — рождение солнца;
Вторая — пламя, что не погаснет;
Третья — создание огня, что дает свет и тепло;
Четвертая — символ возрождения Бога;
Пятая — жизнь новой весны;
Шестая — символ чистоты;
Седьмая — обновление;
Седьмая — во имя любви;
Восьмая — во имя равновесия;
Девятая — дыхание новой жизни;
Десятая — связь с истиной;
Одиннадцатая — в честь Невесты;
Двенадцатая — в честь моего пути;
Тринадцатая — в честь искусств;
Четырнадцатая — дань мудрости;
Пятнадцатая — в честь Имболка;
Шестнадцатая — во имя силы; Семнадцатая — во имя земли;
Восемнадцатая — Бригите; И последняя свеча — первая свеча, рождение солнца;
Огонь, что никогда не гаснет.» Для другого свечного ритуала понадобится наполовину наполненная талой водой стеклянная ваза. Полчашки молока или сливок. Молочные продукты используют не магазинные, а домашние. Емкость с водой поставьте перед собой (на алтарь или стол), чашку с молоком – сбоку. Зажгите свечу (белого или желтого цвета). Глядите на воду и сформируйте желание, визуализируйте его, наполните силой. Влейте в воду молоко и спокойно посидите. После выйдите на улицу, отпустите намерение и вылейте содержимое чаши на землю. Обязательно обратитесь к Мирозданию, чтобы оно посодействовало в исполнении то, что пожелали. Вернитесь в дом. Потушите свечу и обязательно «заземлитесь» (поешьте, сделайте пару физических упражнений или другое). Праздничный стол Традиционная пища на Имблок – блюда на основе молока. Это не значит, есть одну молочную кашу. К столу подают любые блюда, напитки и десерты, в состав коих входит хоть капля молока. А кисломолочные продукты, как и алкоголь, под строгим запретом. На праздник готовятся и мясные кушанья, но с большим количеством моркови, лука и чеснока, щедро сдобренные перцем и карри. Обязательно подаются сухофрукты и орехи. Испеките настоящий волшебный пирог. Из продуктов понадобится: мука – 300 г; яйца – 2 шт.; сливочное масло – 125 г; молоко – 4 ст. л.; сахар – 175 г; соль – щепотка; разрыхлитель – 1 ч. л.; семена тмина – 25 г. Во время приготовления читайте заговор: «Непрерывное движение, пусть все вещи текут, как круги магии, пусть сила растет, элементы смешиваются. Примите мою мольбу. Как я хочу, чтобы так оно и было.» Готовится следующим образом: Просейте в миску (можно, магический котел) муку с разрыхлителем и солью. В этот момент думайте о семье, друзьях или личных желаниях. В отдельной посуде взбейте яйца – визуализируйте, как они пропитываются светом, энергией, вдохновением. Смешайте семена тмина и сахар. Влейте в массу яичную смесь и перемешайте. Замешивайте строго деревянной ложкой или лопаткой. Потихоньку подливайте молоко. Смажьте маслом форму, вылейте в нее тесто и отправьте в духовку на час-полтора, запекается при температуре 180–190°. Когда волшебный пирог станет золотисто-коричневым, вынимайте из духовки и остудите. А подается десерт с магической начинкой с пряным молочным напитком: прогрейте молоко, добавьте мед и ванильный сахар. Перемешайте и разлейте в чашки. Сверху присыпьте корицей. Мир дарит увлеченному магией человеку множество возможностей для жизненного благополучия и развития творческого потенциала. Упускать таковые, значит, ограничивать собственную жизнь и саму свою сущность. Первый солнечный праздник используйте в полной мере. Трепетная Невеста, опытная Мать и мудрая Старуха – триединая богиня Бригит – никому не откажет в помощи.
""", image: "imblock"),
     
        // MARK: Февраль
           Holiday(name: "Дистинг", dateComponents: DateComponents(month: 02, day: 02), greetingText: """
                   Дистинг, в более привычном скандинавском варианте — «Тинг дис». Он возвещает пробуждение жизненных сил, заснувших во время Зимней Ночи. Считается, что земля в это время готовится к приему новых семян. Также этот период называют символичным временем подготовки к грядущим событиям.
                   Имеет место перед началом сезона вегетации. Этот день символически представляет ухаживание Фрейра (плодородие) за девой Гёрд (Земля). Его целью было повышение будущего урожая. Он упоминается в саге Херварара, саге Вига-Глумс, саге об Эгилсе и Хеймскрингле. Празднование до сих пор продолжается в форме ежегодной ярмарки под названием Disting. До наступления праздника в жилище должно быть чисто. Так же чисты должны быть наши помыслы. И тогда чистые искренние желания, загадываемые в ночь с первого на второе февраля, могут исполниться.
 """, image: "y1"),
           
           
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


Бельтайн первоначально появился в Ирландии и Шотландии. В период раннего Средневековья он также существовал в Англии и других странах, где проживали кельты. Этот праздник был тесно связан с сельским хозяйством, поскольку отражал важную для крестьян дату — начало лета.

В Ирландии, Шотландии и Уэльсе Бельтайн считался также праздником пастухов. Они в этот день пекли пироги, собирали подношения и кусочками пищи задабривали диких животных, чтобы те не нападали на стада.

Со временем христианская церковь заменила Бельтайн другими праздниками. Примерно в это же время стали отмечаться день Святой Вальпургии, Пасха и праздник Святого Креста. Однако языческие традиции еще долго сохранялись. В ряде мест Бельтайн так и продолжал отмечаться, в других его стали называть Майским днем.

В настоящее время этот праздник утратил свое религиозное значение, но не потерял актуальности. Он активно отмечается по всей Европе. В это время проводятся весенние ярмарки, народные гулянья. В Дублине, например, проходит парад волынщиков, организуются выставки и фейерверки.

Традиции праздника
Главным ритуалом праздника Бельтайн было разжигание больших костров на вершинах гор и холмов, расположенных вблизи селений. В течение нескольких дней перед праздником жители общины собирали дрова для костра. В канун Бельтайна в домах селения гасили все огни. Ночью жители, возглавляемые друидами, поднимались к месту будущего кострища. Перед самым рассветом костер зажигался, а люди пели торжественный гимн солнцу. После этого они зажигали от костра факелы и несли их в свои жилища, чтобы передать новый огонь очагу.

Еще одной традицией являются прыжки через костер. Это была не просто забава или состязание. Люди верили, что огонь праздничного костра избавит от злых духов, нечистых помыслов и болезней. Неслучайно эта традиция прослеживается у многих народностей.

Интерес представляет и шабаш в Вальпургиеву ночь с 30 апреля на 1 мая. Это также отзвуки древнего праздника Бельтайн. Подобные собрания в Средние века порицались христианской церковью, поэтому проводились тайно. В настоящее время уже ничто не мешает женщинам поучаствовать в импровизированном празднике на природе.
""", image: "y32"),
        
        
        
        
        // MARK: Май
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
""", image: "y3"),
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
Когда-то люди во многом уповали не на себя и науку, а на мистические силы – богов и духов. Поэтому, как и подобает языческим культурам, к бытовому торжеству урожая примешивались сверхъестественные смыслы.

Богов плодородия отблагодарить за год надо. И заодно попросить у них благословения, чтобы и будущий сезон был урожайным. Как раз окончено время выпаса скота – часть стада отправляют на убой и заготовку мяса. Это и жертвоприношение, и предвестник сытного пира.

Поскольку рубеж года в язычестве – это всегда время пограничное, когда происходит разлом между миром людей и духов, Самайн не избежал появления мифов. Кельты считали, что в ночь празднования в мир приходят сиды – местные небожители. Безумно красивые и властные духи. Отчасти ради них все торжества и затевались.
Есть и другой кельтский миф, связанный с Самайном. Богиня лета и плодородия Айне временно уходит, и после Самайна миром будет править Калех – ледяная старуха. Еще один бог – Кернунн – становится разрушительной стихией, вероятно, олицетворением зимы и смерти.

Интересно, что Кернунн – рогатый бог. Часто его изображают с козлиной головой. Точь в точь как в христианской мифологии рисуют дьявола и бесов.


""", image: "y2"),
        
        
        Holiday(name: " Самайн ", dateComponents: DateComponents(month: 10, day: 31), greetingText: """
                
🌀До нашей эры никакого октября и ноября у кельтов не существовало. Самайн отмечали по лунном календарю. А он, как известно, постоянно меняется. Историки предполагают, что празднование Самайна выпадало на начало третьей осенней луны. Есть и другие теории, которые привязывают торжество к осеннему равноденствию.

В те давние времена Самайн был чем-то вроде Нового Года – концом и одновременно началом цикла. Его отмечали три ночи кряду: пока старая луна сменялась молодой. По другой версии, праздновали семь ночей – начинали за три дня до конца лунного месяца.

Как и для многих архаичных обществ, для кельтов были важны две вещи – урожай и скот. Поэтому и Самайн, как полагают историки, был связан с окончанием сельхозработ и подготовкой к новому сезону.
Конечно, со временем языческое торжество Самайн не избежало влияния религии. А поскольку для истинного христианина все языческие культы от лукавого, то и торжество плодородия с его идей перехода между мирами превратилось в демонический обряд.
Вслед за этим идея Самайна быстро стала восприниматься не как торжество Нового года, а как темное время, когда рогатые черти выходят на охоту в наш мир. Образованный человек заметит, что ничего общего с мировоззрением христианина такое убеждение не имеет. Но надо понимать, что Самайн отмечали простые крестьяне, которые были заняты выживанием, а не самообразованием. Поэтому байка о дне духов и прижилась.

Традиции праздника
Поскольку празднику Самайн уже несколько тысячелетий, то и традиций к 2023 году для него накопилась масса. Какие-то ныне забыты и лишь встречаются на страницах историографии. Другие трансформировались и поддерживаются в современном мире.

Главная традиция Самайна – щедрый пир. Вельможи собирали своих подданных и закатывали праздник.
Считается, что на Самайн нельзя выходить за пределы своего города или села. Эта традиция также идет от осознания пограничного времени: заплутавшего могут утащить нечистые духи.
Нельзя избегать участия в народном веселии. Верили, что отколовшийся от коллектива человек, который не гулял Самайн, просто не перейдет в новый временной цикл.
Охранительную функцию у кельтов играли изображения черепов. Их вывешивали на забор. Роль черепа часто исполнял какой-нибудь плод. Например, репа. А позже в Америке стали использовать тыквы. На них вырезали глаза и рот, а внутрь иногда ставили свечу.
На Самайн были в ходу огненные ритуалы – например, прыжки через костер. Их можно сравнить со славянской Масленицей или обрядами в ночь на Ивана Купалу. Огонь как символ очищения присутствовал во многих древних культах.
Также на Сайман было принято гадать. Например, сжигали кожуру плодов и смотрели на очертания гари. Или разбивали яйцо в воду, чтобы по его форме сделать предсказания на будущее.
СамайнНа Сайман принято гадать. Фото: pexels.com
Как и многие торжества, Самайн имеет свое обрядовое блюдо. Кельты пекли хлеба разных форм. Например, в форме рогов, как жертву тому самому богу Кернунну.
С укоренением христианства и наложением языческого и религиозного мировоззрений, Самайн стал днем памяти усопших. Тут все вновь объясняется идеей разлома между двумя мирами.
Самайн в России в 2023 году принято отмечать фестивалями ирландской и шотландской музыки. Здесь же примешиваются традиции Дня святого Патрика с его разнузданным хмельным весельем. Поклонники кельтской культуры устраивают фестивали. Причем некоторые, как и в старину, длятся три ночи к ряду.

""", image: "samajn"),
        
        
        
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

""", image: "yol"),
           
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
Кстати, о «шерстяных котах»! В зимнее солнцестояние, когда ночь убаюкивает так долго, детей часто пугают Йольским Котом. Шотландцы считают, что если в Йоль не запереть все окна, не надеть теплую шерстяную кофту, то тебя утащит усатый, хвостатый кот. Бог знает, как он выглядит в голове напуганного ребенка.🌞



""", image: "yol"),
           
           
           
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
