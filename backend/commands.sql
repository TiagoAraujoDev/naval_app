-- ALTER DATABASE old_name RENAME TO new_name;
-- CREATE ROLE role_name WITH SUPERUSER LOGIN;
-- ALTER ROLE role_name WITH NOSUPERUSER;

CREATE TABLE public.users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  fullname VARCHAR(100) NOT NULL,
  password VARCHAR(8) NOT NULL,
  phone VARCHAR(11) NOT NULL 
);

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('tma', 'Tiago Araujo', 'asdfqwer', '81989258078');

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('mcaustica', 'Maryne da Silva', '0987kdj1', '81978903465');

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('lipe', 'Felipe Araujo', 'asdf1234', '81982736472');

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('rauzinho', 'Raul Herbert', 'souhack', '81991726379');

INSERT INTO public.users (username, fullname, password, phone)
VALUES ('biel', 'Gabriel Araujo', 'senha', '81921426354');

-- RBAC
CREATE TABLE auth.users (
  user_id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  "password" TEXT NOT NULL,
  email TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE auth.roles (
  "role" TEXT PRIMARY KEY;
);
CREATE TABLE auth.perms (
  "perm" TEXT PRIMARY KEY;
);
CREATE TABLE auth.user_roles (
  user_id INT REFERENCES auth.users(user_id),
  "role" TEXT REFERENCES auth.roles("role"),
  PRIMARY KEY (user_id, "role")
);
CREATE TABLE auth.role_perms (
  "role" TEXT REFERENCES auth.roles("role"),
  "perm" TEXT REFERENCES auth.perms("perm"),
  PRIMARY KEY ("role", "perm")
);

CREATE VIEW auth.user_perms AS
WITH _perms AS (
  SELECT user_id, "perm", "role"
  FROM auth.users
  JOIN auth.user_roles USING (user_id)
  JOIN auth.role_perms USING ("role")
  JOIN auth.perms      USING ("perm"))
SELECT user_id,
  ARRAY_AGG("perm") AS perms,
  ARRAY_AGG("role") AS roles
FROM _perms
GROUP BY user_id;
