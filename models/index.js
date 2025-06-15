const { Sequelize } = require("sequelize");
const sequelize = new Sequelize("west_africa_db", "user", "password", {
  dialect: "postgres"
});

const Country = require("./Country")(sequelize);

module.exports = { sequelize, Country };

