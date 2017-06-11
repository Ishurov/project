# Вариант 7
# Блок 1
Разработайте и добавьте в проект «Базовое приложение» набор моделей для рассмотренной ниже предметной области.


Описание хранящихся в библиотеке книг. Включает в себя: библиотечные залы, стеллажи, книги. Библиотечный зал описывается кратким и полным названием. Стеллаж описывается: индексом и привязкой к залу. Книга описывается названием, списком авторов (каждый автор характеризуется фамилий, именем, отчеством и авторским указателем), указанием тома или части (если есть), индексом ISBN, годом издания, указанием индексов стеллажей и номеров полок на них, количеством экземпляров.




# Блок 2
Для разработанных моделей организуйте интерфейс редактирования (добавления новых, и удаления) сущностей указанным в вашем варианте образом. Интерфейсы редактирования должны быть хотя бы частично адаптивными. Они должны быть удобны и для работы на стационарном мониторе, и для работы на смартфоне. Для работы с датами используйте «календарный» плагин. Должна быть настроена система авторизации, так, чтобы каждая из функций была доступна только тем пользователям, которые должны ей пользоваться по логике предметной области. Всё страницы, доступные только зарегистрированным пользователям, должны содержать навигацию в виде «хлебных крошек» (breadcrumbs). Пример подобного оформления можно увидеть в интерфейсе редактирования пользователя базового приложения. Интерфейсы не должны сдержать элементов ввода идентификаторов или других, непонятных неискушённому пользователю составляющих.


Вместо набора скаффолдов для всех существующих моделей создайте только два основных интерфейса редактирования. Первый интерфейс – это редактирование стеллажей. Все необходимые модели должны редактироваться по схеме nested attributes. Второй интерфейс – это редактирование книг. Все необходимые модели также должны редактироваться по схеме nested attributes.