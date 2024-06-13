-- Create View
-- SELECT * FROM auth.user_perms; A better way to query user's perms
DROP VIEW IF EXISTS auth.user_perms;
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
