ALTER DATABASE old_name RENAME TO new_name;
CREATE ROLE role_name WITH SUPERUSER LOGIN;
ALTER ROLE role_name WITH NOSUPERUSER;

CREATE TABLE public.users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  fullname VARCHAR(100) NOT NULL,
  password VARCHAR(8) NOT NULL,
  phone VARCHAR(11) NOT NULL 
);

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('tiagoma', 'Tiago Araujo', 'asdf1234', '81989258078');
