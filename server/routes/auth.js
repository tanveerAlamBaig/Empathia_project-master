const express = require('express');
const User = require('../models/user');
const psychologist = require('../models/psychologist'); // Updated to psychologist model
const bcryptjs = require('bcryptjs');
const authRouter = express.Router();
const jwt = require('jsonwebtoken');

authRouter.post('/api/signup/:userType', async (req, res) => {
  const { name, email, password, phone } = req.body;
  const userType = req.params.userType;

  try {
    let existingUserPatient = await User.findOne({ $or: [{ email }, { phone }] });
    let existingUserPsychologist = await psychologist.findOne({ $or: [{ email }, { phone }] });

    if (existingUserPatient || existingUserPsychologist) {
      return res.status(400).json({ msg: 'User with the same email or phone already exists' });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let newUser;
    if (userType === 'patient') {
      newUser = new User({
        email,
        password: hashedPassword,
        name,
        phone,
      });
      await newUser.save();
    } else if (userType === 'psychologist') {
      newUser = new psychologist({
        email,
        password: hashedPassword,
        name,
        phone,
      });
      await newUser.save();
    } else {
      return res.status(400).json({ msg: 'Invalid user type' });
    }

    res.json(newUser);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

//sign in Route
authRouter.post('/api/signin/:userType', async (req, res) => {
  try {
    const { email, password } = req.body;
    const userType = req.params.userType;

    let user;
    if (userType === 'patient') {
      user = await User.findOne({ email });
    } else if (userType === 'psychologist') {
      user = await psychologist.findOne({ email });
    } else {
      return res.status(400).json({ msg: 'Invalid user type' });
    }

    if (!user) {
      return res.status(400).json({ msg: `User with this email does not exist as ${userType}` });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Incorrect Password.' });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey");

    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

  //  const router = express.Router();

  authRouter.post('/api/updateSelectedModules/:userId', async (req, res) => {
  console.log('Update selected modules route hit');
 const { selectedModules } = req.body;
 const userId = req.params.userId;

 try {
   let user = await User.findById(userId);

   if (!user) {
     return res.status(400).json({ msg: 'User does not exist' });
   }

   // Update the selectedModules field for the user
   user.selectedModules = selectedModules;
   await user.save();

   res.json(user);
 } catch (e) {
   res.status(500).json({ error: e.message });
 }
});
  //  module.exports = router;
module.exports = authRouter;
