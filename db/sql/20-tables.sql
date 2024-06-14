-- Drop view first
DROP VIEW IF EXISTS auth.user_perms;

-- Create table
DROP TABLE IF EXISTS auth.user_roles CASCADE;
DROP TABLE IF EXISTS auth.role_perms CASCADE;
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
DROP TABLE IF EXISTS auth.roles CASCADE;
CREATE TABLE auth.roles (
  "role" TEXT PRIMARY KEY
);

-- Create table perms
DROP TABLE IF EXISTS auth.perms CASCADE;
CREATE TABLE auth.perms (
  "perm" TEXT PRIMARY KEY
);

-- Create table user_roles
CREATE TABLE auth.user_roles (
  user_id INT REFERENCES auth.users(user_id) ON DELETE CASCADE,
  "role" TEXT REFERENCES auth.roles("role") ON DELETE CASCADE,
  PRIMARY KEY (user_id, "role")
);

-- Create table role_perms
CREATE TABLE auth.role_perms (
  "role" TEXT REFERENCES auth.roles("role") ON DELETE CASCADE,
  "perm" TEXT REFERENCES auth.perms("perm") ON DELETE CASCADE,
  PRIMARY KEY ("role", "perm")
);
