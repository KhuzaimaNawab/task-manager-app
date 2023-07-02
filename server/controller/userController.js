const userModel = require("../models/userModel")

const createUser = async (req,res) => {
    const user = await userModel.create({
        email: req.body.email,
        password: req.body.password,
        firstName: req.body.firstName,
        lastName: req.body.lastName,
        phoneNumber: req.body.phoneNumber
    })

    const userData = user.save()

    return res.status(200).json(userData)
}

module.exports = createUser