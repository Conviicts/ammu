const express = require('express')
const router = express.Router()
const bcrypt = require('bcryptjs')
const passport = require('passport')

// Load User model
const User = require('../models/web/User')
const { ensureAuthenticated, forwardAuthenticated } = require('../config/auth')


// Login Page
router.get('/login', forwardAuthenticated, (req, res) => {
  res.render('login', {
    user: req.user
  })
})

// Login
router.post('/login', (req, res, next) => {
  passport.authenticate('local', {
    successRedirect: '/',
    failureRedirect: '/user/login',
    failureFlash: true
  })(req, res, next)
})

// Logout
router.get('/logout', (req, res) => {
  req.logout()
  req.flash('success_msg', 'Vous êtes maintenant déconnecté')
  res.redirect('/user/login')
})


module.exports = router
