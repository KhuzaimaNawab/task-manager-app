const userModel = require("../models/userModel");
const jwt = require("jsonwebtoken");

const createUser = async (req, res) => {
  const existingUser = await userModel.findOne({ email: req.body.email });
  if (existingUser) {
    return res.status(400).json({ error: "Email already exists" });
  }
  const user = await userModel.create({
    email: req.body.email,
    password: req.body.password,
    firstName: req.body.firstName,
    lastName: req.body.lastName,
    phoneNumber: req.body.phoneNumber,
  });
  const userData = user.save();
  const token = jwt.sign({ user }, "hello", { expiresIn: 60 * 60 });

  res.cookie("jwt", token, {
    httpOnly: true,
    secure: true,
    sameSite: "strict",
  });

  return res.status(200).json(user);
};

const getUser = async (req, res) => {
  const users = await userModel.find();
  return res.status(200).json(users);
};

module.exports = { createUser: createUser, getUser: getUser };
