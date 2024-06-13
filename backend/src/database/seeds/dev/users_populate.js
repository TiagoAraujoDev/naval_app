/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async (knex) => {
  // Deletes ALL existing entries
  await knex("public.users").del();
  await knex("public.users").insert([
    {
      username: "tiago",
      fullname: "Tiago Muniz de Araujo",
      password: "asdf1234",
      phone: "81909872345",
    },
    {
      username: "mcaustica",
      fullname: "Maryne da Silva",
      password: "opiu2345",
      phone: "81996280389",
    },
    {
      username: "lipe",
      fullname: "Felipe Muniz de Araujo",
      password: ".m,n4567",
      phone: "81992837465",
    },
    {
      username: "rauzinho",
      fullname: "Raul Helbert",
      password: ";laks029834",
      phone: "81982736459",
    },
  ]);
};