const express = require("express");
const { connetcDatabase } = require("./database/knex.js");

const app = express();

app.use(express.json());

const knex = connetcDatabase();

app.get("/users", async (_req, res) => {
  const users = await knex.select("id", "username", "fullname", "phone").from("public.users");
  return res.status(200).json(users);
});

app.listen(8000, "0.0.0.0", () => {
  console.log("server running...");
});
