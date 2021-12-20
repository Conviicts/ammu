module.exports = {
  ensureAuthenticated: (req, res, next) => {
    if (req.isAuthenticated()) {
      return next()
    }
    req.flash('error_msg', 'Veuillez vous connecter pour acceder à cette partie du site')
    res.redirect('/users/login')
  },
  forwardAuthenticated: (req, res, next) => {
    if (!req.isAuthenticated()) {
      return next()
    }
    res.redirect('/dashboard')
  },
  isAdmin: (req, res, next) => {
    if (req.isAuthenticated() && req.user !== undefined && req.user.dataValues.role === 5)
      return next()
    res.redirect('/')
  },
  isStaff: (req, res, next) => {
    if (req.isAuthenticated() && req.user !== undefined && req.user.dataValues.role >= 1)
      return next()
    res.redirect('/')
  }
}
