const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

var corsOptions = {
  origin: "http://localhost:3000",
};

app.use(cors(corsOptions));

app.use(bodyParser.json());

app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.json({ message: "Api connected success..." });
});

require("./app/routes/post.routes")(app);

const PORT = process.env.PORT || 8088;
app.listen(PORT, () => {
  console.log(`server is running on port ${PORT}`);
});
