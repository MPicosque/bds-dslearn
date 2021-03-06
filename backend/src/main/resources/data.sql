INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', false, 'Trilha HTML', 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKP_vXiqH9-ugPGNgXZdgbQFzyFKqU4yoybQ&usqp=CAU');

INSERT INTO tb_offer (edition, start_moment, end_moment, couse_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, couse_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1); 

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 1, 'external link', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Forum', 'Tire suas d??vidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 2, 'external link', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Lives', 'Lives exclusivas para as turmas', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 0, 'external link', 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 1', 'Neste cap??tulo vamos come??ar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 2', 'Neste cap??tulo vamos continuar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 3', 'Neste cap??tulo vamos finalizar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1ehu8iKuHD9wqWI9yNnEltx8xdCGmkZjuQ&usqp=CAU', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T15:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do cap??tulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do cap??tulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do cap??tulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do cap??tulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

