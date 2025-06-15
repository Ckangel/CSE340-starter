module.exports = (req, res, next) => {
  const { name, population } = req.body;
  if (!name || population < 1) {
    return res.status(400).send("Invalid input");
  }
  next();
};
