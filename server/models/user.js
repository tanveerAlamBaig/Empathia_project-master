const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
  email: {
    required: true,
    type: String,
    trim: true,
  },
  password: {
    required: true,
    type: String,
  },
  type: {
    type: String,
    default: "user",
  },

  selectedModules: {
         type: [String], // Array of module IDs
         default: [] // Default value is an empty array
       }

});

const User = mongoose.model("User", userSchema);
module.exports = User;