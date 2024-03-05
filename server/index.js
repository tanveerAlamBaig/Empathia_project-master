//import from packages

 const express = require('express');
 const cors = require('cors');
 const mongoose = require('mongoose');
 const app = express();
 app.use(cors());

 const PORT = 3000;
 const DB = "mongodb+srv://2012244:2012244@cluster0.ntmup3b.mongodb.net/?retryWrites=true&w=majority";


 //import from other files
 const authRouter = require('./routes/auth');

 //Connection
 mongoose.connect(DB).then(() => {
     console.log("Connection Successful");
 })
     .catch((e) => {
         console.log(e)
     });

 //middleware
 app.use(express.json());
 app.use(authRouter);

 app.listen(PORT, "0.0.0.0", () => {
     console.log(`Connected at port ${PORT}`)
 });


