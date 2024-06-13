import { db } from "../database/knex.js";

class UserController {
  async fetchUsers(_req, res) {
    try {
      const users = await db
        .select("id", "username", "fullname", "phone")
        .from("public.users");
      return res.status(200).json(users);
    } catch (e) {
      return res
        .status(500)
        .json({ message: "Internal error", error: e.message });
    }
  }

  async test(_req, res) {
    return res.status(200).json({ test: "It works!" });
  }

  async create(req, res) {
    try {
      const { username, fullname, password, phone } = req.body;
      const [user] = await db
        .where({ username: username })
        .from("public.users")
        .select("username");
      if (user && username === user.username)
        return res.status(409).json({ message: "Username already taken!" });
      await db("public.users").insert({ username, fullname, password, phone });
      return res.status(201).send();
    } catch (e) {
      return res
        .status(500)
        .json({ message: "Internal error", error: e.message });
    }
  }

  async fetchUser(req, res) {
    try {
      const { id } = req.params;
      const [user] = await db.where({ id: parseInt(id) }).from("public.users");
      if (!user) return res.status(400).json({ message: "No user found!" });
      return res.status(200).json(user);
    } catch (e) {
      return res
        .status(500)
        .json({ message: "Internal error", error: e.message });
    }
  }

  async update(req, res) {
    try {
      const { username, phone, password } = req.body;
      const { id } = req.params;
      const [user] = await db.where({ id: parseInt(id) }).from("public.users");
      if (!user) return res.status(400).json({ message: "No user found!" });
      const updateData = {};
      if (username !== undefined) updateData.username = username;
      if (phone !== undefined) updateData.phone = phone;
      if (password !== undefined) updateData.password = password;
      await db("public.users").where({ id: user.id }).update(updateData);
      return res.status(204).send();
    } catch (e) {
      return res
        .status(500)
        .json({ message: "Internal error", error: e.message });
    }
  }

  async delete(req, res) {
    try {
      const { id } = req.params;
      const [user] = await db.where({ id: parseInt(id) }).from("public.users");
      if (!user) return res.status(400).json({ message: "No user found!" });
      await db("public.users").where({ id: user.id }).del();
      return res.status(204).send();
    } catch (e) {
      return res
        .status(500)
        .json({ message: "Internal error", error: e.message });
    }
  }
}

export default UserController;
