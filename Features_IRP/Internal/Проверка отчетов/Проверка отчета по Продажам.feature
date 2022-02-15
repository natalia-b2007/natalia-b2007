﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отчетов

Как Тестировщик я хочу
протестировать отчеты 
чтобы проверить, что у пользователя не возникнет проблем

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0901 подготовительный сценарий (тестирование отчетов)
	Когда экспорт основных данных
	Когда экспорт документов продаж
	И я выполняю код встроенного языка на сервере
	| 'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
	| 'Документы.SalesInvoice.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |


Сценарий: _0902 проверка отчета по Продажам
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку 'Сформировать'
	И я жду когда в табличном документе "Result" заполнится ячейка "R13C4" в течение 20 секунд	
	Дано Табличный документ 'Result' равен макету "Продажи1" по шаблону