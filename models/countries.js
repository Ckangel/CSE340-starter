const { DataTypes } = require("sequelize");

module.exports = (sequelize) =>
  sequelize.define("Country", {
    name: { type: DataTypes.STRING, allowNull: false },
    capital: DataTypes.STRING,
    population: DataTypes.BIGINT,
    area_km2: DataTypes.DECIMAL,
    official_language: DataTypes.STRING,
    currency: DataTypes.STRING,
    national_flag_url: DataTypes.TEXT
  });
// This model defines the structure of the Country table in the database.

