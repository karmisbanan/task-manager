/*заполнение справочника ролей roledirs*/
INSERT INTO `crm_db`.`roledirs` (`title`, `createdAt`, `updatedAt`) VALUES ('developer', now(), now());
INSERT INTO `crm_db`.`roledirs` (`title`, `createdAt`, `updatedAt`) VALUES ('employee', now(), now());
INSERT INTO `crm_db`.`roledirs` (`title`, `createdAt`, `updatedAt`) VALUES ('customer', now(), now());

/* заполнение справочника статусов выполнения statusdirs*/
INSERT INTO `crm_db`.`statusdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Не начата', now(), now());
INSERT INTO `crm_db`.`statusdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Выполняется', now(), now());
INSERT INTO `crm_db`.`statusdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Выполнена', now(), now());

/* заполнение справочника приоритетов задач prioritydirs*/
INSERT INTO `crm_db`.`prioritydirs` (`id`, `title`, `createdAt`, `updatedAt`) VALUES (1, 'Высокий', now(), now());
INSERT INTO `crm_db`.`prioritydirs` (`id`, `title`, `createdAt`, `updatedAt`) VALUES (2, 'Средний', now(), now());
INSERT INTO `crm_db`.`prioritydirs` (`id`, `title`, `createdAt`, `updatedAt`) VALUES (3, 'Низкий', now(), now());


/* заполнение справочника этапов stagedirs*/ 
/*видео*/							
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Заявка/продумываниеконцепции', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Предложение идеи клиенту/поиск спонсоров', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Разработка сюжета, тз и предварительное планирование	', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Подписание договора и получение предоплаты/получение бюджета', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Написание литературного сценария', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Постановка производственных дэдлайнов и документации', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Создание концепт арта', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Создание режиссерского сценария и раскадровки', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Создание чертежей и проектов к декорациям, реквизиту, 3D моделей', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Освоение съемочных объектов - супервайзинг', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Создание реквизита, декораций и костюмов', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Репитиции сцен', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Съемка сцен', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Отбор и подготовка съемочного материала', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Монтаж в соответствии с режиссерским сценарием', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Композитинг', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Обработка VFX', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Первичный рендер (подготовка под фин. цк)', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Финальная цветокоррекция', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Финальный рендер', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Презентация готового продукта и работа с правками', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Сдача проекта (подписание акта о проделанной работе)', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Получение постоплаты', now(), now());

/*графика*/
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Моделирование 3D объектов/сцен', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Текстурирование', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Анимирование/симуляция', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Освещение', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Операторская работа/трекинг', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Работа со звуком', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Рендер пассов', now(), now());

/*звук*/
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Запись и создание звука в процессе съемок', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Отбор и подготовка звукового материала', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Сведение записанного звука (по готовности монтажа сцен)', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Обработка SFX (по готовности VFX)', now(), now());
INSERT INTO `crm_db`.`stagedirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Мастеринг', now(), now());

/*заполнение отделов и групп(группы имеют в родителях отдел) departments*/
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (1,'Административный блок', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (2,'Продюссерский блок', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (3,'Проектный отдел', now(), now(), now(), null);	
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (4,'Режиссерский отдел', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (5,'Отдел подготовки', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (6,'Съемочный отдел', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (7,'Отдел CG', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (8,'Отдел монтажа', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (9,'Отдел VFX', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (10,'Отдел колористики', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (11,'Отдел звука', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (12,'Отдел обще-целевой подготовки проекта к сдаче', now(), now(), now(), null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (13,'Арт группа', now(), now(), now(), 3);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (14,'Производственная группа', now(), now(), now(), 3);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (15,'Группа сценаристов', now(), now(), now(), 4);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (16,'Художественная группа', now(), now(), now(), 4);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (17,'Режиссерская группа', now(), now(), now(), 4);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (18,'Группа по декорациям', now(), now(), now(), 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (19,'Группа по реквизиту', now(), now(), now(), 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (20,'Группа по костюмам', now(), now(), now(), 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (21,'Группа обеспечения', now(), now(), now(), 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (22,'Группа супервайзинга', now(), now(), now(), 5);


INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (23,'Операторская группа', now(), now(), now(), 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (24,'Группа световиков', now(), now(), now(), 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (25,'Группа звуковиков', now(), now(), now(), 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (26,'Актерская группа', now(), now(), now(), 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (27,'Группа визуальных спецэффектов', now(), now(), now(), 6);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (28,'Группа моделистов', now(), now(), now(), 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (29,'Группа аниматоров', now(), now(), now(), 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (30,'Группа текстурировщиков', now(), now(), now(), 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (31,'Группа по освещению', now(), now(), now(), 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (32,'Операторская группа', now(), now(), now(), 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (33,'Рендер группа', now(), now(), now(), 7);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (34,'Группа отбора и подготовки съемочного материала', now(), now(), now(), 8);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (35,'Группа монтажа', now(), now(), now(), 8);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (36,'Группа композитинга', now(), now(), now(), 9);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (37,'Группа VFX', now(), now(), now(), 9);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (38,'Группа колористов', now(), now(), now(), 10);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (39,'Группа подготовки звукового материала', now(), now(), now(), 11);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (40,'Группа мастеринга', now(), now(), now(), 11);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (41,'Группа SFX', now(), now(), now(), 11);


/*заполнение справочника должностей*/
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Администратор', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Логисты', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Продюссер', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Со-продюссер', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Штурмовики', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Сценарист', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Автор идеи', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Редактор', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Консультант', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Художник постановщик', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Художник концепт артов', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Художник раскадровки', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Режиссер постановщик ', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Второй режиссер', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Помощник режиссера', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Наемные рабочие', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Штатные декораторы', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Штатные реквизиторы', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Штатные костюмеры', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Курьеры', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ведущий супервайзер', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Супервайзеры', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Оператор постановщик', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Оператор', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Оператор стадикама', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Фокус пулер', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ассистент операторов', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Гафер', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ассистент гафера', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Звукорежиссер', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Звукооператоры', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ассистенты', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Звукооформитель (шумовик)', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Студийники', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ассистент режиссера постанощика', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Актерский состав', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Тренера', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Хориограф', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Гримеры', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Пиротехник', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Супервайзер по спецэфектам', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Ассистент', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Моделисты персонажей', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Моделисты неживых объектов', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Техник Motion Cap', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Аниматоры CG', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Симуляторы FX', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Звукооформители', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Художник текстур', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Текстурировщик', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Гафер CG', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Оператор CG', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Рендережник', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Сортировщик видео-материала', now(), now());  
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Режиссер монтажа', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Монтажер', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Композер', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Vfx-Designer', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Motion-Designer', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Колорист', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Сортировщик аудио материала', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Звукорежиссер', now(), now()); 
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Мастер сведения', now(), now());
INSERT INTO `crm_db`.`postdirs` (`title`, `createdAt`, `updatedAt`) VALUES ('Sound Designer', now(), now()); 
