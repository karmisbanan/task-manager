/* функции дефолтных значений полей

DROP function IF EXISTS `createdAt`;
DELIMITER $$
CREATE FUNCTION `createdAt` ()
RETURNS datetime
BEGIN
RETURN NOW();
END;

DROP function IF EXISTS `updatedAt`;
DELIMITER $$
CREATE FUNCTION `updatedAt` ()
RETURNS datetime
BEGIN
RETURN NULL;
END;

DROP function IF EXISTS `deletedAt`;
DELIMITER $$
CREATE FUNCTION `deletedAt` ()
RETURNS datetime
BEGIN

RETURN NULL;
END;
*/


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

/* заполнение справочника больших этапов abstractstages*/
INSERT INTO `crm_db`.`abstractstages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, 'Предпродакшн', now(), now(), null);
INSERT INTO `crm_db`.`abstractstages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, 'Продакшн', now(), now(), null);
INSERT INTO `crm_db`.`abstractstages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, 'Постпродакшн', now(), now(), null);
INSERT INTO `crm_db`.`abstractstages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, 'Сдача проекта', now(), now(), null);
INSERT INTO `crm_db`.`abstractstages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (5, 'Завершен', now(), now(), null);


/* заполнение справочника подэтапов stagedirs*/ 
/*видео*/							
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (1,'Заявка/продумываниеконцепции', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (2,'Предложение идеи клиенту/поиск спонсоров', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (3,'Разработка сюжета, тз и предварительное планирование	', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (4,'Подписание договора и получение предоплаты/получение бюджета', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (5,'Написание литературного сценария', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (6,'Постановка производственных дэдлайнов и документации', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (7,'Создание концепт арта', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (8,'Создание режиссерского сценария и раскадровки', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (9,'Создание чертежей и проектов к декорациям, реквизиту, 3D моделей', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (10,'Освоение съемочных объектов - супервайзинг', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (11,'Создание реквизита, декораций и костюмов', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (12,'Репитиции сцен', now(), now(),1);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (13,'Съемка сцен', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (14,'Отбор и подготовка съемочного материала', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (15,'Монтаж в соответствии с режиссерским сценарием', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (16,'Композитинг', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (17,'Обработка VFX', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (18,'Первичный рендер (подготовка под фин. цк)', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (19,'Финальная цветокоррекция', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (20,'Финальный рендер', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (21,'Презентация готового продукта и работа с правками', now(), now(),4);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (22,'Сдача проекта (подписание акта о проделанной работе)', now(), now(),4);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (23,'Получение постоплаты', now(), now(),4);

/*графика*/
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (24,'Моделирование 3D объектов/сцен', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (25,'Текстурирование', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (26,'Анимирование/симуляция', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (27,'Освещение', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (28,'Операторская работа/трекинг', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (29,'Работа со звуком', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (30,'Рендер пассов', now(), now(),3);

/*звук*/
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (31,'Запись и создание звука в процессе съемок', now(), now(),2);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (32,'Отбор и подготовка звукового материала', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (33,'Сведение записанного звука (по готовности монтажа сцен)', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (34,'Обработка SFX (по готовности VFX)', now(), now(),3);
INSERT INTO `crm_db`.`stagedirs` (`id`, `title`, `createdAt`, `updatedAt`, `AbstractStageId`) VALUES (35,'Мастеринг', now(), now(),3);

/*заполнение отделов и групп(группы имеют в родителях отдел) departments*/
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (1,'Административный блок', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (2,'Продюссерский блок', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (3,'Проектный отдел', now(), now(), null, null);	
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (4,'Режиссерский отдел', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (5,'Отдел подготовки', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (6,'Съемочный отдел', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (7,'Отдел CG', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (8,'Отдел монтажа', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (9,'Отдел VFX', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (10,'Отдел колористики', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (11,'Отдел звука', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (12,'Отдел обще-целевой подготовки проекта к сдаче', now(), now(), null, null);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (13,'Арт группа', now(), now(), null, 3);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (14,'Производственная группа', now(), now(), null, 3);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (15,'Группа сценаристов', now(), now(), null, 4);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (16,'Художественная группа', now(), now(), null, 4);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (17,'Режиссерская группа', now(), now(), null, 4);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (18,'Группа по декорациям', now(), now(), null, 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (19,'Группа по реквизиту', now(), now(), null, 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (20,'Группа по костюмам', now(), now(), null, 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (21,'Группа обеспечения', now(), now(), null, 5);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (22,'Группа супервайзинга', now(), now(), null, 5);


INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (23,'Операторская группа', now(), now(), null, 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (24,'Группа световиков', now(), now(), null, 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (25,'Группа звуковиков', now(), now(), null, 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (26,'Актерская группа', now(), now(), null, 6);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (27,'Группа визуальных спецэффектов', now(), now(), null, 6);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (28,'Группа моделистов', now(), now(), null, 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (29,'Группа аниматоров', now(), now(), null, 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (30,'Группа текстурировщиков', now(), now(), null, 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (31,'Группа по освещению', now(), now(), null, 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (32,'Операторская группа', now(), now(), null, 7);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (33,'Рендер группа', now(), now(), null, 7);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (34,'Группа отбора и подготовки съемочного материала', now(), now(), null, 8);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (35,'Группа монтажа', now(), now(), null, 8);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (36,'Группа композитинга', now(), now(), null, 9);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (37,'Группа VFX', now(), now(), null, 9);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (38,'Группа колористов', now(), now(), null, 10);

INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (39,'Группа подготовки звукового материала', now(), now(), null, 11);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (40,'Группа мастеринга', now(), now(), null, 11);
INSERT INTO `crm_db`.`departments` (`id`,`title`, `createdAt`, `updatedAt`, `deletedAt`, `ParentDepartmentId`) VALUES (41,'Группа SFX', now(), now(), null, 11);


/*заполнение таблицы "отделы выполняющие подэтап"*/
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 2, 1);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 2, 2);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 1, 3);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 2, 3);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 2, 4);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 15, 5);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 1, 6);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 2, 6);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 3, 6);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 16, 7);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 16, 8);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 17, 8);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 22, 10);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 17, 10);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 21, 10);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 18, 11);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 19, 11);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 20, 11);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 17, 12);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 26, 12);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 23, 13);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 24, 13);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 26, 13);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 27, 13);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 34, 14);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 35, 15);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 36, 16);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 37, 17);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 38, 19);

INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 24);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 25);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 26);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 27);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 28);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 29);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 7, 30);

INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 25, 31);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 39, 32);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 40, 33);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 41, 34);
INSERT INTO `crm_db`.`stageexecutors` (`createdAt`, `updatedAt`, `deletedAt`, `DepartmentId`, `StageDirId`) VALUES (now(), now(), null, 40, 35);


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
