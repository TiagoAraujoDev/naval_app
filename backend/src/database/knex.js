import "dotenv/config";
import knex from "knex";
// import knexConfig from "../../knexfile.js";

const connetcDatabase = () => {
  // const _knex = knex(knexConfig["development"]);
  const _knex = knex({
    client: 'pg',
    connection: {
      connectionString: process.env.PG_CONNECTION_STRING,
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      user: process.env.DB_USER,
      database: process.env.DB_NAME,
      password: process.env.DB_PASSWORD,
      ssl: process.env.PGSSL ? { rejectUnauthorized: false } : false,
    },
  })
  return _knex
};

const db = connetcDatabase();
export { db };
