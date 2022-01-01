﻿#language: ru

@ExportScenarios

Функционал: Заполнение шапки документа Заказ

Как Менеджер по продажам я хочу
заполнить шапку документа Заказ 
чтобы протестировать Заказ

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Заполнение шапки документа Заказ
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Покупатели'   |
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'              |
		| 'Магазин "Бытовая техника"' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку открытия поля с именем "Склад"
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
		

