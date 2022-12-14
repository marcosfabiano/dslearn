INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEecDY7oApR3G07PRpBpZdRLby0TDrtVcorg&usqp=CAU.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para turma', 3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos começar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos finalizar', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThTWjVz2xJK37Uhv_WEYjpoTJ-SJ2VMXsI1A&usqp=CAU.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_Uri) VALUES (1, 'Material de apoio abc', 'https://youtube.com/watch?v=sqbqoR-lMf8&t=368');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_Uri) VALUES (2, 'Material de apoio abc', 'https://youtube.com/watch?v=sqbqoR-lMf8&t=368');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_Uri) VALUES (3, 'Material de apoio abc', 'https://youtube.com/watch?v=sqbqoR-lMf8&t=368');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z' );

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
