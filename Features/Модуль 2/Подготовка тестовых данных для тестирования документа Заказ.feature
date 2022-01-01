﻿#language: ru
@tree

Функционал: Подготовка тестовых данных для тестирования документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение констант
	И я перезаполняю константу "SSLIMAP" значением "False"
	И я перезаполняю константу "SSLPOP3" значением "False"
	И я перезаполняю константу "SSLSMTP" значением "False"
	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
	И я перезаполняю константу "ИспользоватьIMAP" значением "False"
	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
	И я перезаполняю константу "ИспользоватьAPNS" значением "False"
	И я перезаполняю константу "ИспользоватьFCM" значением "False"
	И я перезаполняю константу "ИспользоватьWNS" значением "False"
	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
	И я перезаполняю константу "ИспользоватьСпутники" значением "False"
	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
	И я перезаполняю константу "ПортPOP3" значением "110"
	И я перезаполняю константу "ПортSMTP" значением "25"
	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
	И я перезаполняю константу "ТолькоБесплатные" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: Загрузка Организаций

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

Сценарий: Загрузка валюты - Рубли

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

Сценарий: Загрузка склада - Малый

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'        | 'False'          |

Сценарий: Загрузка покупателя - Магазин "Бытовая техника"

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'    | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка' | '14'  | '+7(999)528-96-21' | 'techno@techno.ru' | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                | ''                                                                   | ''       | ''       | ''                | ''         | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |

Сценарий: Загрузка номенклатуры - Sony К3456P, Доставка

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'   | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'        | 'Улица'  | 'Дом' | 'Телефон'        | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная' | '12'  | '+7(999)623-568' | 'mak@jmail.ru'     | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'     | ''                                                                   | ''       | ''       | ''             | ''       | ''    | ''               | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'         |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                     | 'Штрихкод'      | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'     | '000000040' | 'Sony К3456P'   | 'Н657'    | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | '8593539095330' | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style="font-size: 12pt;">Телевизор Sony К3456P</span></p>\n<p><br></p>\n<p>Откройте мир телевидения заново!</p>\n<p><br></p>\n<p>Отличное качество изображения подарит новые визуальные впечатления.</p>\n<p>Функция "Где пульт?!" избавит Вас от траты нервов и времени на поиски пульта.</p>\n<p><br></p>\n<p><br></p>\n<p>Данная модель телевизора выполнена по LED-технологии, имеет диагональ 32 дюйма, обеспечивает высокое качество картинки (даже во время грозы).</p>\n<p><br></p>\n<p><span style=" font-weight: bold;">Серия</span> - Series К34</p>\n<p><span style=" font-weight: bold;">Вес</span> - 14 кг</p>\n<p><span style=" font-weight: bold;">Диагональ экрана</span> - 32"</p>\n<p><span style=" font-weight: bold;">Формат экрана</span> - 16:9</p>\n<p><span style=" font-weight: bold;">Технология </span>- LED</p>\n<p><br></p>\n<p><span style=" text-decoration: underline;">Функции:</span></p>\n<p><br></p>\n<ul><li><span style=" font-weight: bold;">Таймер</span> </li>\n<li><span style=" font-weight: bold;">Таймер выключения</span></li>\n<li><span style=" font-weight: bold;">Поиск польта дистанционного управления "Где пульт?!"</span></li>\n<li><span style=" font-weight: bold;">Количество каналов - 299</span></li>\n<li><span style=" font-weight: bold;">Меню на русском языке</span></li>\n<li><span style=" font-weight: bold;">Ручная и автоматическая настройка каналов</span></li>\n</ul><p><br></p>\n<p><span style=" text-decoration: underline;">Интерфейсы</span></p>\n<ul><li>Разъем для наушников</li>\n<li>Вход RCA компонентный YPbPr</li>\n</ul><p><br></p>\n<p><span style=" text-decoration: underline;">Комплектация:</span></p>\n<ul><li>Инструкция</li>\n<li>Кабель AV</li>\n<li>Пульт д/у</li>\n</ul><p><br></p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'      | ''        | ''                                                                       | ''             | 'Enum.ВидыТоваров.Услуга' | ''              | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Доставка по графику.</p>\n</body></html>'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |          |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000039' | 'Телевизоры'    | ''        | ''                                                                       | ''             | ''                        | ''              | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | ''       |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'        | ''        | ''                                                                       | ''             | ''                        | ''              | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''             | ''                        | ''              | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | ''       |
	


