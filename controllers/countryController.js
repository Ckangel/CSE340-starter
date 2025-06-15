const { Country } = require("../models");

exports.index = async (req, res) => {
  const countries = await Country.findAll();
  res.render("index", { countries });
};

exports.create = async (req, res) => {
  try {
    const data = req.body;
    await Country.create(data);
    res.redirect("/");
  } catch (err) {
    res.status(400).send("Validation failed");
  }
};
