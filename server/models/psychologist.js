const mongoose = require("mongoose");

const psychologistSchema = mongoose.Schema({
  email: {
    required: true,
    type: String,
    unique: true,
  },
  password: {
    required: true,
    type: String,
  },
  type: {
    type: String,
    default: "user",
  },

  phone: {
    unique: true,
    type: String,
  
  },

});

const psychologist = mongoose.model("psychologist", psychologistSchema);
module.exports = psychologist;