const express = require("express");
const userController = require("../controller/userController");
const taskController = require("../controller/taskController");
const router = express.Router();

router.post("/user/createUser", userController.createUser);
router.post("/task/createTask", taskController.createTask);

router.get("/user/getUser",userController.getUser);
router.get("/user/getTask", taskController.getTask);

module.exports = router;
