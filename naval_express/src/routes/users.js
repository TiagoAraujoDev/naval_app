const { Router } = require("express");
const UserController = require("../controllers/userController");

const userRoute = Router();

const userController = new UserController();

userRoute.get("/", userController.fetchUsers);
userRoute.post("/", userController.create);
userRoute.get("/:id", userController.fetchUser);
userRoute.patch("/:id", userController.update);
userRoute.delete("/:id", userController.delete);

module.exports = userRoute;
