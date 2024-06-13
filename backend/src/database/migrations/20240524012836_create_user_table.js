/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = (knex) => {
  return knex.schema.createTable("public.users", (table) => {
    table.increments("id").primary();
    table.text("username").notNullable();
    table.text("fullname").notNullable();
    table.text("password").notNullable();
    table.text("phone").notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = (knex) => {
  return knex.schema.dropTable("public.users");
};
