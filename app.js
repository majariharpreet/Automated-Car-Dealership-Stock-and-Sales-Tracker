
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql');

var con=mysql.createConnection({
  host:"localhost",
  user:"root",
  password:"",
  database:"dms"
});

con.connect(function(err)
{
  if(err)throw err;
  console.log("Connected");
});



var indexRouter = require('./routes/index');
var pager2Router = require('./routes/pager2');
var addcustomerRouter = require('./routes/addcustomer');
var deletecustomerRouter = require('./routes/deletecustomer');
var addvehicleRouter = require('./routes/addvehicle');
var loginRouter = require('./routes/login');
var processRouter = require('./routes/process');
var processdeleter = require('./routes/processdelete');
var dummy=require('./routes/dummy');
var vehicleprocessRouter = require('./routes/vehicleprocess');
var dummysearch = require('./routes/dummysearch');
var vehicledummysearch= require('./routes/vehicledummysearch');
var dummyinput = require('./routes/dummyinput');
var saleinputRouter= require('./routes/saleinput');
var vehicledummyinput = require('./routes/vehicledummyinput');
var salefinalRouter= require('./routes/salefinal');
var loginauthRouter= require('./routes/loginauth');
var checkinventory = require('./routes/checkinventory');
var addspersonRouter = require('./routes/addsperson');
var spersonprocessRouter = require('./routes/spersonprocess');
var viewspersonRouter= require('./routes/viewsperson');
var deletespersonRouter = require('./routes/deletesperson');
var salespersonprocessdeleteRouter = require('./routes/salespersonprocessdelete');
var view92Router = require('./routes/view92');
var custcheckRouter = require('./routes/custcheck');
var salecheckerRouter = require('./routes/salechecker');
var salechecker2Router = require('./routes/salechecker2');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(__dirname + '/public'));

app.use('/', loginRouter);
app.use('/pager2', pager2Router);
app.use('/addcustomer', addcustomerRouter);
app.use('/deletecustomer',deletecustomerRouter);
app.use('/addvehicle',addvehicleRouter);
app.use('/loginauth', loginauthRouter);
app.use('/process', processRouter);
app.use('/processdelete',processdeleter);
app.use('/dummy',dummy);
app.use('/vehicleprocess',vehicleprocessRouter);
app.use('/dummysearch',dummysearch);
app.use('/vehicledummysearch',vehicledummysearch);
app.use('/vehicledummyinput',vehicledummyinput);
app.use('/dummyinput',dummyinput);
app.use('/checkinventory',checkinventory);
app.use('/saleinput',saleinputRouter);
app.use('/salefinal',salefinalRouter);
app.use('/addsperson',addspersonRouter);
app.use('/spersonprocess',spersonprocessRouter);
app.use('/viewsperson',viewspersonRouter);
app.use('/deletesperson',deletespersonRouter);
app.use('/salespersonprocessdelete',salespersonprocessdeleteRouter);
app.use('/custcheck',custcheckRouter);
app.use('/salechecker',salecheckerRouter);
app.use('/view92',view92Router);
app.use('/salechecker2',salechecker2Router);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
app.post('/validate',function(request,response){

var username=req.body.uname;
console.log(username);

var pass=req.body.psw;

//query 

});

module.exports = app;
