/*пользователи c паролями 12345678 */
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (1,'Developer1TestUserFullName', 'd1-test@mail.ru', 'D1TestUser', 'PtDFCtPZJRilzz9t5m1tBW095KXFurbCcTXWNGWiYOeqchWIadT6F8iZ1MJlmJhFqRhb+bAKeEkEygszno6SpA==', 'local', 'V8YE+0+FMF8Pv0H4I2wbBg==', now(), now(), NULL, 1);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (2,'Developer2TestUserFullName', 'd2-test@mail.ru', 'D2TestUser', 'UP7SVP0MiX+oOhz2cVWoQzdG1huEZm52xLsnHW2Cr8iGiXH9TcicF+IV8CDAxx4dDJrGYIkH658CZB3zI4nFqw==', 'local', 'oSztvri02KO1YKsqlrB+zQ==', now(), now(), NULL, 1);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (3,'Employee1TestUserFullName', 'e1-test@mail.ru', 'E1TestUser', 'vNCnXHJyZmhaJVNsgPwxXOpCB4mC57LGDACFZdaXdtgFcb8yct0tGItmuLKub18V52Nu49i6GNZM2Ucp33DveA==', 'local', 'donSx9yuLzk3i3jhwTlhaw==', now(), now(), NULL, 2);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (4,'Employee2TestUserFullName', 'e2-test@mail.ru', 'E2TestUser', 'Uidn6OhQiA9I9iG9n2iM+WZ+dr74hGajhYYOqBsU9ZfsIHpJK8G4AvODwBWJBLWesZ9KaaI+8F48FGrJx7hmSA==', 'local', 'hgjR3ax4benzQTijkXvNoQ==', now(), now(), NULL, 2);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (5,'Employee3TestUserFullName', 'e3-test@mail.ru', 'E3TestUser', 'vNCnXHJyZmhaJVNsgPwxXOpCB4mC57LGDACFZdaXdtgFcb8yct0tGItmuLKub18V52Nu49i6GNZM2Ucp33DveA==', 'local', 'donSx9yuLzk3i3jhwTlhaw==', now(), now(), NULL, 2);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (6,'Employee4TestUserFullName', 'e4-test@mail.ru', 'E4TestUser', 'Uidn6OhQiA9I9iG9n2iM+WZ+dr74hGajhYYOqBsU9ZfsIHpJK8G4AvODwBWJBLWesZ9KaaI+8F48FGrJx7hmSA==', 'local', 'hgjR3ax4benzQTijkXvNoQ==', now(), now(), NULL, 2);
INSERT INTO `crm_db`.`users` (`id`,`name`, `email`, `username`, `hashedPassword`, `provider`, `salt`, `createdAt`, `updatedAt`, `deletedAt`, `RoleDirId`) VALUES (7,'Customer1TestUserFullName', 'c1-test@mail.ru', 'C1TestUser', 'Uidn6OhQiA9I9iG9n2iM+WZ+dr74hGajhYYOqBsU9ZfsIHpJK8G4AvODwBWJBLWesZ9KaaI+8F48FGrJx7hmSA==', 'local', 'hgjR3ax4benzQTijkXvNoQ==', now(), now(), NULL, 3);


/*проекты*/
INSERT INTO `crm_db`.`projects` (`id`,`title`, `description`, `budget`, `dateStart`, `dateEnd`, `createdAt`, `updatedAt`, `ProjectCuratorId`, `ProjectClientId`) VALUES (1,'Тестовый проект 1', 'Описание тестового проекта', '1000', now(), now(), now(), now(),3,7);

/*должности на проекте*/
INSERT INTO `crm_db`.`posts` (`id`, `createdAt`, `updatedAt`, `PostDirId`, `ProjectId`, `UserId`) VALUES (1, now(), now(), 3, 1, 3);
INSERT INTO `crm_db`.`posts` (`id`, `createdAt`, `updatedAt`, `PostDirId`, `ProjectId`, `UserId`) VALUES (2, now(), now(), 6, 1, 4);
INSERT INTO `crm_db`.`posts` (`id`, `createdAt`, `updatedAt`, `PostDirId`, `ProjectId`, `UserId`) VALUES (3, now(), now(), 10, 1, 5);
INSERT INTO `crm_db`.`posts` (`id`, `createdAt`, `updatedAt`, `PostDirId`, `ProjectId`, `UserId`) VALUES (4, now(), now(), 12, 1, 6);


/*этапы*/
INSERT INTO `crm_db`.`stages` (`id`,`dateStart`, `dateEnd`, `createdAt`, `updatedAt`, `ProjectId`, `StageDirId`, `StatusDirId`, `StageCuratorId`) VALUES (1,now(), now(),now(), now(), 1, 1, 1, 4);
INSERT INTO `crm_db`.`stages` (`id`,`dateStart`, `dateEnd`, `createdAt`, `updatedAt`, `ProjectId`, `StageDirId`, `StatusDirId`, `StageCuratorId`) VALUES (2,now(), now(),now(), now(), 1, 2, 1, 4);


/*задачи*/
INSERT INTO `crm_db`.`tasks` (`id`,`title`, `description`, `runtime`, `remotelink`, `createdAt`, `updatedAt`, `deletedAt`,`PriorityDirId`, `StageId`, `StatusDirId`, `TaskExecutorId`) VALUES (1,'задача 1', 'описание задачи 1', now(), 'https://docs.google.com/document/d/1UsYzjvmWtC63TGZfYX1LoWuXwRV6PiAtbbs6wKFCFaw/edit', now(), now(), now(), 1, 1, 1, 5);
INSERT INTO `crm_db`.`tasks` (`id`,`title`, `description`, `runtime`, `remotelink`, `createdAt`, `updatedAt`, `deletedAt`,`PriorityDirId`, `StageId`, `StatusDirId`, `TaskExecutorId`) VALUES (2,'задача 2', 'описание задачи 2', now(), 'https://docs.google.com/document/d/1UsYzjvmWtC63TGZfYX1LoWuXwRV6PiAtbbs6wKFCFaw/edit', now(), now(), now(), 1, 1, 1, 6);
INSERT INTO `crm_db`.`tasks` (`id`,`title`, `description`, `runtime`, `remotelink`, `createdAt`, `updatedAt`, `deletedAt`,`PriorityDirId`, `StageId`, `StatusDirId`, `TaskExecutorId`) VALUES (3,'задача 3', 'описание задачи 3', now(), 'https://docs.google.com/document/d/1UsYzjvmWtC63TGZfYX1LoWuXwRV6PiAtbbs6wKFCFaw/edit', now(), now(), now(), 1, 1, 1, 6);


/*зависимые задачи*/
INSERT INTO `crm_db`.`deptasks` (`id`,`createdAt`, `updatedAt`, `deletedAt`, `TaskId`, `DepTaskId`) VALUES (1,now(), now(), now(), '1', '2');
INSERT INTO `crm_db`.`deptasks` (`id`,`createdAt`, `updatedAt`, `deletedAt`, `TaskId`, `DepTaskId`) VALUES (2,now(), now(), now(), '2', '3');
