import { Router } from "express";
import UserController from "../controllers/userController.js";

const userRoute = Router();

const userController = new UserController();

userRoute.get("/", userController.fetchUsers);
userRoute.get("/test", userController.test);
userRoute.post("/", userController.create);
userRoute.get("/:id", userController.fetchUser);
userRoute.patch("/:id", userController.update);
userRoute.delete("/:id", userController.delete);

export default userRoute;
