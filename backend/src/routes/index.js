import { Router } from "express";
import { usersRoute } from "./users.js";
import { rolesRouter } from "./roles.js";
import { permsRouter } from "./permissions.js";

const router = Router();

router.use("/users", usersRoute);
router.use("/roles", rolesRouter)
router.use("/perms", permsRouter)

export { router };
