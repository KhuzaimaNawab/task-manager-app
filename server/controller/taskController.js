const taskModel = require("../models/taskModel");

const createTask = async (req, res) => {
  const task = await taskModel.create({
    title: req.body.title,
    description: req.body.description,
    dueDate: req.body.dueDate,
    priority: req.body.priority,
    status: req.body.status,
  });
  const taskData = task.save();

  return res.status(200).json(task);
};

const getTask = async (req, res) => {
    const tasks = await taskModel.find();
    return res.status(200).json(tasks)
}

module.exports = {createTask: createTask, getTask: getTask};
