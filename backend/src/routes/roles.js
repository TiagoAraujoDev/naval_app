import { Router } from "express";
import { RoleController } from "../controllers/roleController.js";

const roleController = new RoleController();

const rolesRouter = Router();

rolesRouter.put("/:id", roleController.add);
rolesRouter.delete("/:id", roleController.delete);

export { rolesRouter };
