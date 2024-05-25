require("dotenv/config");
/**
 * @type { Object.<string, import("knex").Knex.Config> }
 */
module.exports = {
  development: {
    client: 'pg',
    connection: process.env.PG_CONNECTION_STRING,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_dev_migrations",
      directory: `${__dirname}/src/database/migrations`
    },
    seeds: {
      directory: `${__dirname}/src/database/seeds/dev`
    }
  },

  staging: {
    client: 'pg',
    connection: process.env.PG_CONNECTION_STRING,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_dev_migrations",
      directory: `${__dirname}/src/database/migrations`
    }
  },

  production: {
    client: 'postgresql',
    connection: process.env.PG_CONNECTION_STRING,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_dev_migrations",
      directory: `${__dirname}/src/database/migrations`
    }
  }
};
