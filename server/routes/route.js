const express = require("express");
const userController = require("../controller/signupController");
const taskController = require("../controller/taskController");
const loginController = require("../controller/loginController");
const router = express.Router();

router.post("/user/createUser", userController.createUser);
router.post("/task/createTask", taskController.createTask);

router.get("/user/getUser",userController.getUser);
router.get("/user/getTask", taskController.getTask);

router.post("/user/login", loginController);

module.exports = router;