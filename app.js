const express = require('express');
const userRouter = require('./routes/user');
const app = express();


app.use(express.static('public'));
app.use(express.urlencoded({
    extended: false
}))



app.use('/user', userRouter);


app.use((err, req, res, next) => {
    res.send({
        code: 500,
        msg: 'server error'
    });
})


app.listen(3000, () => console.log(`服務器開啟`)); 

app.all('*',function(req,res,next){
    res.header('Access-Control-Allow-Origin','*');

    res.header('Access-Control-Allow-Headers','content-type');

    res.header('Access-Control-Allow-Methods','DELETE,PUT,POST,GET,OPTIONS')
    if(req.method.toLowerCase() === 'options'){
        res.send(200)
    }else{
        next();
    }
});