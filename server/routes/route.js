const express = require("express");
const userController = require("../controller/userController");
const taskController = require("../controller/taskController");
const router = express.Router();

router.post("/user/createUser", userController);
router.post("/task/createTask", taskController);

module.exports = router;
