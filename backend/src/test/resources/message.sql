insert into channel (id, name, slack_id)
values (5, '임시 채널', 'ABC1234'),
       (3, '공지사항 채널', 'DEF5678');

insert into member (id, slack_id, thumbnail_url, username, first_login)
values (1, 'U03MC231', 'https://summer.png', '써머', false);

insert into channel_subscription(id, view_order, channel_id, member_id)
values (1, 2, 3, 1),
       (2, 1, 5, 1);

insert into message (id, modified_date, posted_date, text, member_id, channel_id, slack_message_id)
values (1, '2022-07-12 14:21:55', '2022-07-12 14:21:55', 'Sample Text', 1, 5, 'ABC1231'),
       (2, '2022-07-12 15:21:55', '2022-07-12 15:21:55', 'Sample Text', 1, 5, 'ABC1232'),
       (3, '2022-07-12 16:21:55', '2022-07-12 16:21:55', 'Sample Text', 1, 5, 'ABC1233'),
       (4, '2022-07-12 17:21:55', '2022-07-12 17:21:55', '호 Sample Text', 1, 5, 'ABC1234'),
       (5, '2022-07-13 18:21:55', '2022-07-13 18:21:55', '호 Sample Text', 1, 5, 'ABC1235'),
       (6, '2022-07-13 19:21:55', '2022-07-13 19:21:55', '호 Sample Text', 1, 5, 'ABC1236'),
       (7, '2022-07-13 20:21:55', '2022-07-13 20:21:55', '호 Sample Text', 1, 5, 'ABC1237'),
       (8, '2022-07-13 21:21:55', '2022-07-13 21:21:55', 'Sample Text A', 1, 5, 'ABC1238'),
       (9, '2022-07-13 22:21:55', '2022-07-13 22:21:55', 'Sample Text A', 1, 5, 'ABC1239'),
       (10, '2022-07-14 13:21:55', '2022-07-14 13:21:55', 'Sample Text A', 1, 5, 'ABC12310'),
       (11, '2022-07-14 14:21:55', '2022-07-14 14:21:55', 'Sample Text A', 1, 5, 'ABC12311'),
       (12, '2022-07-14 15:21:55', '2022-07-14 15:21:55', 'Sample Text A', 1, 5, 'ABC12312'),
       (13, '2022-07-14 16:21:55', '2022-07-14 16:21:55', 'Sample Text A', 1, 5, 'ABC12313'),
       (14, '2022-07-14 17:21:55', '2022-07-14 17:21:55', 'jupjup Sample Text A', 1, 5, 'ABC12314'),
       (15, '2022-07-15 13:21:55', '2022-07-15 13:21:55', 'jupjup Sample Text A', 1, 5, 'ABC12315'),
       (16, '2022-07-15 14:21:55', '2022-07-15 14:21:55', 'jupjup Sample Text A', 1, 5, 'ABC12316'),
       (17, '2022-07-15 15:21:55', '2022-07-15 15:21:55', 'jupjup Sample Text A', 1, 5, 'ABC12317'),
       (18, '2022-07-15 16:21:55', '2022-07-15 16:21:55', 'jupjup Sample Text A', 1, 5, 'ABC12318'),
       (19, '2022-07-16 13:21:55', '2022-07-16 13:21:55', 'Sample Text A', 1, 5, 'ABC12319'),
       (20, '2022-07-16 14:21:55', '2022-07-16 14:21:55', 'Sample Text A', 1, 5, 'ABC12320'),
       (21, '2022-07-16 15:21:55', '2022-07-16 15:21:55', 'Sample Text A', 1, 5, 'ABC12321'),
       (22, '2022-07-16 17:21:55', '2022-07-16 17:21:55', 'Sample Text A', 1, 5, 'ABC12322'),
       (23, '2022-07-17 13:21:55', '2022-07-17 13:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12323'),
       (24, '2022-07-17 14:21:55', '2022-07-17 14:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12324'),
       (25, '2022-07-17 15:21:55', '2022-07-17 15:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12325'),
       (26, '2022-07-17 17:21:55', '2022-07-17 17:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12326'),
       (27, '2022-07-18 13:21:55', '2022-07-18 13:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12327'),
       (28, '2022-07-18 14:21:55', '2022-07-18 14:21:55', '줍줍 Sample Text A', 1, 5, 'ABC12328'),
       (29, '2022-07-18 15:21:55', '2022-07-18 15:21:55', 'Sample Text A', 1, 5, 'ABC12329'),
       (30, '2022-07-18 16:21:55', '2022-07-18 16:21:55', 'Sample Text A', 1, 5, 'ABC12330'),
       (31, '2022-07-19 13:21:55', '2022-07-19 13:21:55', 'Sample Text A', 1, 5, 'ABC12331'),
       (32, '2022-07-19 14:21:55', '2022-07-19 14:21:55', 'Sample Text A', 1, 5, 'ABC12332'),
       (33, '2022-07-19 15:21:55', '2022-07-19 15:21:55', 'Sample Text', 1, 5, 'ABC12333'),
       (34, '2022-07-19 16:21:55', '2022-07-19 16:21:55', 'Sample Text', 1, 5, 'ABC12334'),
       (35, '2022-07-20 13:21:55', '2022-07-20 13:21:55', 'Sample Text', 1, 5, 'ABC12335'),
       (36, '2022-07-20 14:21:55', '2022-07-20 14:21:55', 'Sample Text', 1, 5, 'ABC12336'),
       (37, '2022-07-20 15:21:55', '2022-07-20 15:21:55', 'Sample Text', 1, 5, 'ABC12337'),
       (38, '2022-07-20 17:21:55', '2022-07-20 17:21:55', 'Sample Text', 1, 5, 'ABC12338'),
       (39, '2022-07-29 17:21:55', '2022-07-29 17:21:55', '', 1, 5, 'ABC12338');

insert into bookmark(id, member_id, message_id)
values (1, 1, 1),
      (2, 1, 5),
      (3, 1, 10);

insert into reminder (id, member_id, message_id, remind_date)
values (1, 1, 38, '2022-08-12 14:20:00');
