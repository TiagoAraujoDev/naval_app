import { Router } from "express";
import { PermissionController } from "../controllers/permissionController.js";

const permissionController = new PermissionController();

const permsRouter = Router();

permsRouter.put("/", permissionController.add);
permsRouter.delete("/", permissionController.delete);

export { permsRouter };
