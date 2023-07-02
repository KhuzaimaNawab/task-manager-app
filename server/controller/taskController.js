const taskModel = require("../models/taskModel");

const createTask = async (req, res) => {
  const task = taskModel.create({
    title: req.body.title,
    description: req.body.description,
    dueDate: req.body.dueData,
    priority: req.body.priority,
    status: req.body.status,
    userId: req.user._id,
  });
  const taskData = await task.save();

  return res.status(200).json(taskData);
};

module.exports = createTask;
