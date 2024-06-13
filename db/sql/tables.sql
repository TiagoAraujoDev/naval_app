-- Create table
DROP TABLE IF EXISTS auth.users;
CREATE TABLE auth.users (
  user_id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  fullname TEXT NOT NULL,
  "password" TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create table roles
DROP TABLE IF EXISTS auth.roles;
CREATE TABLE auth.roles (
  "role" TEXT PRIMARY KEY
);

-- Create table perms
DROP TABLE IF EXISTS auth.perms;
CREATE TABLE auth.perms (
  "perm" TEXT PRIMARY KEY
);

-- Create table user_roles
DROP TABLE IF EXISTS auth.user_roles;
CREATE TABLE auth.user_roles (
  user_id INT REFERENCES auth.users(user_id),
  "role" TEXT REFERENCES auth.roles("role"),
  PRIMARY KEY (user_id, "role")
);

-- Create table role_perms
DROP TABLE IF EXISTS auth.role_perms;
CREATE TABLE auth.role_perms (
  "role" TEXT REFERENCES auth.roles("role"),
  "perm" TEXT REFERENCES auth.perms("perm"),
  PRIMARY KEY ("role", "perm")
);
