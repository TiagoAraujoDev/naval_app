require("dotenv/config");
const knex = require("knex");
const knexConfig = require("../../knexfile");

connetcDatabase = () => {
  const _knex = knex(knexConfig["development"]);
  return _knex
};

exports.knex = connetcDatabase();
