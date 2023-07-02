const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.use(express.json());

mongoose
  .connect(
    "mongodb+srv://khuzaimanawab1:admin123@task-manager.dz9q1p4.mongodb.net/?retryWrites=true&w=majority"
  )
  .then(() => {
    app.listen(3000, () => {
      console.log("listening on port 3000");
    });
  });

app.use(require("./routes/route"));
