const express = require("express");
const app = express();
const countryRoutes = require("./routes/countryRoutes");

app.set("view engine", "ejs");
app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use("/", countryRoutes);

// Global error handler
app.use((err, req, res, next) => {
  console.error(err);
  res.status(500).send("Internal Server Error");
});

module.exports = app;
