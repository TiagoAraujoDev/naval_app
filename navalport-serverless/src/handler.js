const serverless = require("serverless-http");
const express = require("express");
const cors = require("cors");
const usersRoute = require("./routes/users");

const app = express();

// middlewares
app.use(cors());
app.use(express.json());

// Routes
app.use("/users", usersRoute);

exports.handler = serverless(app)
