const express = require("express");
const usersRoute = require("./routes/users");
const cors = require("cors");

const app = express();
app.use(cors());

app.use(express.json());

app.use("/users", usersRoute);

app.listen(8000, "0.0.0.0", () => {
  console.log("server running...");
});
