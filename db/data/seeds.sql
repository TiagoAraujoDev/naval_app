-- insert 40 users
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('gabriel0', 'Gabriel Smith', 'password4', 'gabriel0@example.com', '7894123560');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('maria1', 'Maria Jones', 'password8', 'maria1@mail.com', '3412789560');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('john2', 'John Taylor', 'password2', 'john2@domain.com', '6758490213');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('alice3', 'Alice Wilson', 'password7', 'alice3@test.com', '8495637201');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('robert4', 'Robert Davis', 'password1', 'robert4@demo.com', '1029384756');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('julia5', 'Julia Miller', 'password5', 'julia5@domain.com', '9081726354');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('michael6', 'Michael Williams', 'password6', 'michael6@example.com', '7483926150');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('sophia7', 'Sophia Johnson', 'password9', 'sophia7@mail.com', '2738491065');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('david8', 'David Brown', 'password10', 'david8@test.com', '3410672958');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('emma9', 'Emma Moore', 'password3', 'emma9@demo.com', '5127894360');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('gabriel10', 'Gabriel Taylor', 'password1', 'gabriel10@example.com', '9081726453');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('maria11', 'Maria Wilson', 'password7', 'maria11@mail.com', '4569871203');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('john12', 'John Smith', 'password4', 'john12@domain.com', '1892465307');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('alice13', 'Alice Davis', 'password6', 'alice13@test.com', '7283945612');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('robert14', 'Robert Moore', 'password5', 'robert14@demo.com', '6071289345');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('julia15', 'Julia Johnson', 'password3', 'julia15@domain.com', '4509612783');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('michael16', 'Michael Brown', 'password9', 'michael16@example.com', '6127940538');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('sophia17', 'Sophia Williams', 'password10', 'sophia17@mail.com', '3578491206');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('david18', 'David Wilson', 'password8', 'david18@test.com', '9487205613');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('emma19', 'Emma Jones', 'password7', 'emma19@demo.com', '1729364850');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('gabriel20', 'Gabriel Miller', 'password2', 'gabriel20@example.com', '6057481239');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('maria21', 'Maria Williams', 'password3', 'maria21@mail.com', '1789653420');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('john22', 'John Johnson', 'password6', 'john22@domain.com', '9345678120');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('alice23', 'Alice Brown', 'password10', 'alice23@test.com', '8205634179');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('robert24', 'Robert Davis', 'password8', 'robert24@demo.com', '1407852369');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('julia25', 'Julia Moore', 'password4', 'julia25@domain.com', '6940275813');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('michael26', 'Michael Wilson', 'password5', 'michael26@example.com', '3584712069');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('sophia27', 'Sophia Smith', 'password7', 'sophia27@mail.com', '8762943150');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('david28', 'David Johnson', 'password9', 'david28@test.com', '5718203946');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('emma29', 'Emma Brown', 'password1', 'emma29@demo.com', '2105867943');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('gabriel30', 'Gabriel Williams', 'password2', 'gabriel30@example.com', '9305824167');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('maria31', 'Maria Davis', 'password10', 'maria31@mail.com', '4586012793');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('john32', 'John Wilson', 'password5', 'john32@domain.com', '7984062513');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('alice33', 'Alice Moore', 'password3', 'alice33@test.com', '1205897463');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('robert34', 'Robert Smith', 'password4', 'robert34@demo.com', '9854703126');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('julia35', 'Julia Jones', 'password6', 'julia35@domain.com', '2365791048');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('michael36', 'Michael Taylor', 'password7', 'michael36@example.com', '8712053469');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('sophia37', 'Sophia Davis', 'password8', 'sophia37@mail.com', '4095721836');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('david38', 'David Miller', 'password1', 'david38@test.com', '3084615927');
INSERT INTO auth.users (username, fullname, password, email, phone) VALUES ('emma39', 'Emma Wilson', 'password9', 'emma39@demo.com', '1467930258');

-- Insert roles
INSERT INTO auth.roles("role") VALUES
('admin'),('manager'),('operator'),('auditor'),('unpriv');

-- Insert permissions
INSERT INTO auth.perms("perm") VALUES
('create'),('read'),('update'), ('delete')
