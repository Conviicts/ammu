const path = require('path')
const express = require('express')
const passport = require('passport')
const flash = require('connect-flash')
const paypal = require('paypal-rest-sdk')
const sequelize = require('./config/web_db')
const cookieParser = require('cookie-parser')
const expressSession = require('express-session')
const expressLayouts = require('express-ejs-layouts')
const SessionStore = require('express-session-sequelize')(expressSession.Store)
const cacheTime = 1//86400000 * 30

const app = express()

const sequelizeSessionStore = new SessionStore({
  db: sequelize
})
// Static Files
app.use(express.static(path.join(__dirname, 'public'), { maxAge: cacheTime }))
app.use('/user/', express.static(path.join(__dirname, '/public'), { maxAge: cacheTime }))
app.use('/shop/', express.static(path.join(__dirname, '/public'), { maxAge: cacheTime }))
app.use('/shop/product', express.static(path.join(__dirname, '/public'), { maxAge: cacheTime }))

// Passport Config
require('./config/passport')(passport)

// EJS
app.use(expressLayouts)
app.set('view engine', 'ejs')

// Express body parser
app.use(express.urlencoded({ extended: true }))

// Express session
app.use(cookieParser())
app.use(expressSession({
  secret: 'dfdfg',
  store: sequelizeSessionStore,
  resave: false,
  saveUninitialized: false
}))

// Passport middleware
app.use(passport.initialize())
app.use(passport.session())

// Connect flash
app.use(flash())

// Global variables
app.use((req, res, next) => {
  res.locals.success_msg = req.flash('success_msg')
  res.locals.error_msg = req.flash('error_msg')
  res.locals.error = req.flash('error')
  next()
})

// Routes
app.use('/', require('./routes/index.js'))
app.use('/user', require('./routes/user.js'))
app.use('/admin', require('./routes/admin.js'))

const PORT = process.env.PORT || 80

app.listen(PORT, console.log(`Server started on port ${PORT}`))
