const express = require("express");
const router = express.Router();
const controller = require("../controllers/countryController");
const validate = require("../validators/countryValidator");

router.get("/", controller.index);
router.post("/countries", validate, controller.create);

module.exports = router;
// This file defines the routes for the country-related operations.
