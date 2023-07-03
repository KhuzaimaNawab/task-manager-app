const userModel = require("../models/userModel");
const jwt = require("jsonwebtoken");

const login = async (req, res, next) => {
  const user = await userModel.findOne({ email: req.body.email });
  try {
    if (user.password == req.body.password) {
      const token = jwt.sign({ user }, "hello", { expiresIn: 60 * 60 });

      res.cookie("jwt", token, {
        httpOnly: true,
        secure: true,
        sameSite: "strict",
      });
      return res.status(200).json({
        message: "Successfully logged in",
      });
    } else {
      return res.status(400).json({
        message: "Invalid Credentails",
      });
    }
  } catch (e) {
    console.log(e);
  }
};

module.exports = login;
