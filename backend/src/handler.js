import serverless from "serverless-http";
import express, { json } from "express";
import cors from "cors";
import { router } from "./routes/index.js";

const app = express();

// middlewares
app.use(cors());
app.use(json());

// Routes
app.use("/prod/navalport-serverless", router);
app.use("/navalport-serverless", router);

app.use("*", (_req, res, _next) => {
  return res.status(404).json({ menssage: "Not found!" });
});

export const handler = serverless(app);
