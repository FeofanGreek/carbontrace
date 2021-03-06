import 'dart:convert';

List items = [{"name":"Выберите значение",
  "items":[{"item":"","value":"","result":"","efficient":"","penanty":""}]},
  {"name":"Дом","items":[{"item":"Выберите значение","value":"","result":"","efficient":"","penanty":""},
    {"item":"Сжигаем уголь","value":"50 г","result":"0.09","efficient":"9.183673469","penanty":"2 сосны, 1 каштан"},
    {"item":"Сжигаем уголь","value":"500 г","result":"1.6","efficient":"163.2653061","penanty":"6 тополей, 1 дуб, 1 каштан"},
    {"item":"Электричество","value":"1000 кВт/ч","result":"0.33","efficient":"33.67346939","penanty":"1 тополь, 2 ели"},
    {"item":"Покупка новой одежды, обуви, домашнего текстиля","value":"6000 руб./мес.","result":"1.19","efficient":"121.4285714","penanty":"4 тополя, 3 дуба, 1 сосну"},
    {"item":"Использование книг, журналов, газет, тетрадей, канцелярских принадлежностей","value":"3000 руб./мес.","result":"0.03","efficient":"3.06122449","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Приобретение нового компьютерного оборудования и иной техники","value":"60000 руб./мес.","result":"2.83","efficient":"288.7755102","penanty":"11 тополей, 1 ель, 1 каштан"},
    {"item":"Покупка новой мебели","value":"100000 руб./год","result":"0.92","efficient":"93.87755102","penanty":"3 тополя, 1 сосну, 3 березы"},
    {"item":"Шторы на 1 окно (льненые)","value":"1 комплект","result":"0.00012","efficient":"0.012244898","penanty":"1 куст красной смородины"},
    {"item":"Шторы на 1 окно (хлопковые)","value":"1 комплект","result":"0.000163333","efficient":"0.016666667","penanty":"1 куст красной смородины"},
    {"item":"Газ","value":"1000 м3","result":"0.1372","efficient":"14","penanty":"3 каштана, 1 березу, 1 ель"},
    {"item":"Горячее водоснабжение","value":"100 Гкал","result":"0.0196","efficient":"2","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Принять Ванну ","value":"1 раз","result":"0.153424658","efficient":"15.6555773","penanty":"3 каштана, 1 березу, 1 ель"},
    {"item":"Выбрасывать мусор без сортировки ","value":"1 выброс мусора (большой мусорный пакет)","result":"1.095890411","efficient":"111.8255521","penanty":"4 тополя, 1 дуб"},
    {"item":"Выбрасывать мусор, сортируя на стекло, бумагу, железные банки, пластик, компост","value":"1 выброс мусора (большой мусорный пакет)","result":"0.493150685","efficient":"50.32149846","penanty":"2 тополя"},
    {"item":"Принять душ","value":"20 минут","result":"0.044031311","efficient":"0.001797196","penanty":"1 куст шиповника"}]},
  {"name" : "Одежда","items" : [{"item":"Выберите значение","value":"","result":"","efficient":"","penanty":""},
    {"item":"Кожаная сумка","value":"1 шт","result":"0.0196","efficient":"2","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Джинсы","value":"1 пара","result":"0.0138","efficient":"1.408163265","penanty":"3 дуба"},
    {"item":"Пальто","value":"1 шт","result":"0.0488","efficient":"4.979591837","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Пара обуви","value":"1 пара","result":"0.0143","efficient":"1.459183673","penanty":"3 дуба"},
    {"item":"Брюки (не джинсы)","value":"1 пара","result":"0.0135","efficient":"1.37755102","penanty":"3 дуба"},
    {"item":"Топы, майки, футболки, простые легкие кофточки","value":"1 шт","result":"0.0045","efficient":"0.459183673","penanty":"3 ели, 1 яблоню"},
    {"item":"Теплые джемперы, толстовки, кардиганы, свитера","value":"1 шт","result":"0.0137","efficient":"1.397959184","penanty":"3 дуба"},
    {"item":"Платья","value":"1 шт","result":"0.0072","efficient":"0.734693878","penanty":"3 ели, 1 яблоню"},
    {"item":"Колготки (чулки) капроновые","value":"1 пара","result":"0.000267273","efficient":"0.027272727","penanty":"1 рябину"}]},
  {"name" : "Питание","items" : [{"item":"Выберите значение","value":"","result":"","efficient":"","penanty":""},
    {"item":"Веганы - питание за неделю (овощи, фрукты, орехи)","value":"10-15 кг","result":"1.82","efficient":"185.7142857","penanty":"7 тополей, 2 березы"},
    {"item":"Вегитарианцы  - питание за неделю (молочные продукты, мед, овощи, фрукты, орехи)","value":"10-15 кг","result":"2.4","efficient":"244.8979592","penanty":"9 тополей, 1 березу, 2 дуба"},
    {"item":"Рыбоеды  - питание за неделю (рыба, морепродукты, молочные продукты, мед, овощи, фрукты, орехи)","value":"10-15 кг","result":"4.31","efficient":"439.7959184","penanty":"17 тополей, 1 каштан"},
    {"item":"Мясоеды  - питание за неделю, употребление мяса 1-2 раза в неделю (мясо, мясные продукты, рыба, морепродукты, молочные продукты, мед, овощи, фрукты, орехи)","value":"10-15 кг","result":"5.89","efficient":"601.0204082","penanty":"23 тополя, 2 дуба, 1 куст сирени"},
    {"item":"Мясоеды  - питание за неделю, употребление мяса 3-4 раза в неделю (мясо, мясные продукты, рыба, морепродукты, молочные продукты, мед, овощи, фрукты, орехи)","value":"10-15 кг","result":"7.1","efficient":"724.4897959","penanty":"28 тополей, 1 лиственницу"},
    {"item":"Мясоеды  - питание за неделю, употребление мяса 5-7 раз в неделю (мясо, мясные продукты, рыба, морепродукты, молочные продукты, мед, овощи, фрукты, орехи)","value":"10-15 кг","result":"9.07","efficient":"925.5102041","penanty":"36 тополей"},
    {"item":"Яблоко","value":"1 шт","result":"3.28767E-05","efficient":"0.003354767","penanty":"1 куст сирени"},
    {"item":"Банан","value":"1 шт","result":"6.84932E-05","efficient":"0.006989097","penanty":"1 куст сирени"},
    {"item":"Темный шоколад","value":"1 плитка","result":"0.001482192","efficient":"0.151244059","penanty":"3 липы"},
    {"item":"Молочный шоколад","value":"1 плитка","result":"0.001027397","efficient":"0.104836455","penanty":"1 каштан, 1 березу"},
    {"item":"Апельсин, лимон, мандарин, грейпфрут или другой цитрусовый фрукт","value":"1 шт","result":"0.000030137","efficient":"0.003075203","penanty":"1 куст сирени"},
    {"item":"Кофе черный","value":"1 чашка - 200 мл","result":"0.000424658","efficient":"0.043332401","penanty":"1 рябину"},
    {"item":"Яйца","value":"1 шт","result":"0.000276712","efficient":"0.028235952","penanty":"1 яблоню"},
    {"item":"Рыба (фермерская, не дикая)","value":"1 порция - 140 гр","result":"0.001871233","efficient":"0.19094213","penanty":"3 березы"},
    {"item":"Вино (белое или красное)","value":"1 бокал","result":"0.000312329","efficient":"0.031870282","penanty":"1 рябину"},
    {"item":"Вино (белое или красное)","value":"1 бутылка","result":"0.001873973","efficient":"0.191221694","penanty":"3 рябины"},
    {"item":"Помидор","value":"1 шт","result":"0.000164384","efficient":"0.016773833","penanty":"1 куст красной смородины"},
    {"item":"Тофу","value":"100 гр","result":"0.000158904","efficient":"0.016214705","penanty":"1 куст красной смородины"},
    {"item":"Чай (без сахара)","value":"1 чашка - 200 мл","result":"4.10959E-05","efficient":"0.004193458","penanty":"1 куст сирени"},
    {"item":"Рис","value":"3 столовые ложки в сыром виде, 1 порция вареного риса - примерно 200 гр","result":"0.000331507","efficient":"0.03382723","penanty":"1 яблоню"},
    {"item":"Креветки (фермерские)","value":"5 шт","result":"3.4411E-06","efficient":"0.000351132","penanty":"1 куст шиповинка"},
    {"item":"Картофель","value":"1 кг","result":"0.000131507","efficient":"0.013419066","penanty":"1 куст красной смородины"},
    {"item":"Макароны","value":"1 пачка - 750 грамм","result":"0.001178082","efficient":"0.120212469","penanty":"1 каштан, 1 березу"},
    {"item":"Овсяная каша на воде","value":"1 порция","result":"0.00010411","efficient":"0.010623427","penanty":"1 куст красной смородины"},
    {"item":"Овсянка","value":"3 столовых ложки","result":"0.00010411","efficient":"0.010623427","penanty":"1 куст красной смородины"},
    {"item":"Соевое молоко","value":"1 л","result":"0.000972603","efficient":"0.099245178","penanty":"1 каштан, 1 березу"},
    {"item":"Рисовое молоко","value":"1 л","result":"0.001178082","efficient":"0.120212469","penanty":"1 каштан, 1 березу"},
    {"item":"Овсяное молоко","value":"1 л","result":"0.000890411","efficient":"0.090858261","penanty":"1 каштан, 1 березу"},
    {"item":"Коровье молоко","value":"1 л","result":"0.003136986","efficient":"0.320100643","penanty":"4 яблони"},
    {"item":"Миндальное молоко","value":"1 л","result":"0.00069863","efficient":"0.071288789","penanty":"2 березы"},
    {"item":"Баранина","value":"1 кг","result":"0.057789954","efficient":"5.896934116","penanty":"5 яблонь"},
    {"item":"Свинина","value":"1 кг","result":"0.02396347","efficient":"2.445252073","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Хлеб черный","value":"1 буханка","result":"0.004315068","efficient":"0.440313112","penanty":"3 ели, 1 яблоню"},
    {"item":"Батон белый","value":"1 буханка","result":"0.002876712","efficient":"0.293542074","penanty":"3 ели, 1 яблоню"},
    {"item":"Ягоды и виноград","value":"1 кг","result":"0.002410959","efficient":"0.246016215","penanty":"3 каштана"},
    {"item":"Пиво","value":"0,5 л","result":"0.000665753","efficient":"0.067934023","penanty":"2 березы"},
    {"item":"Авокадо","value":"1 шт","result":"0.00019726","efficient":"0.020128599","penanty":"1 куст красной смородины"}]},
  {"name" : "Транспорт","items" : [{"item":"Выберите значение","value":"","result":"","efficient":"","penanty":""},
    {"item":"Авиаперелет (Москва - Нью-Йорк)","value":"7518 км","result":"1.05","efficient":"107.1428571","penanty":"4 тополя, 1 каштан"},
    {"item":"Поездка на мопеде, мотороллере","value":"1000 км","result":"0.08","efficient":"8.163265306","penanty":"3 каштана"},
    {"item":"Авиаперелет (Москва - Франкфурт-на-Майне)","value":"2033 км","result":"0.57","efficient":"58.16326531","penanty":"2 тополя, 1 лиственницу"},
    {"item":"Поездка на среднем мотоцикле с двигателем объемом от 125 до 500 см3","value":"1000 км","result":"0.1","efficient":"10.20408163","penanty":"2 дуба"},
    {"item":"Поездка на тяжелом мотоцикле с двигателями объемом более 500 см3 ","value":"1000 км","result":"0.13","efficient":"13.26530612","penanty":"1 сосну, 1 ель, 1 дуб"},
    {"item":"Поездка на метро","value":"1000 км","result":"0.03","efficient":"3.06122449","penanty":"1 каштан"},
    {"item":"Поездка на метро","value":"100 км","result":"0","efficient":"0","penanty":"компенсация не требуется"},
    {"item":"Поездка на автобусе (в пределах города)","value":"100 км","result":"0.01","efficient":"1.020408163","penanty":"2 лиственницы"},
    {"item":"Поездка на автобусе (междугородний автобус)","value":"500 км","result":"0.01","efficient":"1.020408163","penanty":"2 лиственницы"},
    {"item":"Поездка на поезде внутри страны","value":"1000 км","result":"0.04","efficient":"4.081632653","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Поездка на поезде за пределы страны","value":"10000 км","result":"0.04","efficient":"4.081632653","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Поездка на трамвае","value":"100 км","result":"0","efficient":"0","penanty":"компенсация не требуется"},
    {"item":"Поездка на такси","value":"100 км","result":"0.01","efficient":"1.020408163","penanty":"2 лиственницы"},
    {"item":"Приобретение транспорта, расходы  на его ремонт и т.п.","value":"500000 руб.","result":"7.34","efficient":"748.9795918","penanty":"29 тополей, 1 каштан, 1 березу"},
    {"item":"Бензин","value":"100 л","result":"7.34","efficient":"2","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Дизель","value":"100 л","result":"7.34","efficient":"2","penanty":"1 каштан, 1 березу, 1 яблоню"},
    {"item":"Поездка на пригородном электропоезде (электричке)","value":"1,5 часа","result":"3.67","efficient":"1","penanty":"2 лиственницы"}]},
  {"name" : "Иное","items" : [ {"item":"Выберите значение","value":"","result":"","efficient":"","penanty":""},
    {"item":"Образование ","value":"360000 руб./год","result":"3.69","efficient":"376.5306122","penanty":"14 тополей, 2 дуба, 1 каштан, 1 яблоню"},
    {"item":"Кредит в банке","value":"100000 руб./год","result":"1.54","efficient":"157.1428571","penanty":"6 тополей, 3 яблони"},
    {"item":"Ресторанная, гостиничная, туристическая индустрия","value":"15000 руб./мес.","result":"2.64","efficient":"269.3877551","penanty":"10 тополей, 3 яблони, 2 рябины"},
    {"item":"Шерсть (для вязки, например)","value":"1 кг","result":"0.000414615","efficient":"0.042307692","penanty":"1 яблоню"},
    {"item":"Чтение книги, взятой в библиотеке ","value":"1 книга ","result":"0.010958904","efficient":"1.118255521","penanty":"2 лиственницы"},
    {"item":"Страхование","value":"10000 руб./год","result":"0.07","efficient":"7.142857143","penanty":"5 яблонь"},
    {"item":"Расходы на фитнес и иные спортивные активности","value":"100000 руб./год","result":"0.25","efficient":"25.51020408","penanty":"1 тополь"}]}];
//var items = JsonDecoder().convert(data);