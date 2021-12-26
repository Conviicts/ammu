const express = require('express')
const router = express.Router()
const bcrypt = require('bcryptjs')
const passport = require('passport')

const User = require('../models/web/User')
const { ensureAuthenticated, forwardAuthenticated } = require('../config/auth')


// Login Page
router.get('/', ensureAuthenticated, (req, res) => {
  res.render('admin', {
    user: req.user
  })
})

module.exports = router
