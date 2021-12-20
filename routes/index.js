const express = require('express')
const router = express.Router()
const { ensureAuthenticated } = require('../config/auth')
const News = require('../models/web/News')

// Welcome Page
router.get('/', (req, res) =>  { 
	News.findAll({ order: [['createdAt', 'DESC']] })
    .then(news => { 
		news.forEach(neww => {
			neww.content = neww.content.substr(1, 70)
		});
		res.render('welcome', { user: req.user, news }) 
	})
    .catch(err => console.error(err))
})

router.get('/services', (req, res) => res.render('training', {
	user: req.user
}))

router.get('/about', (req, res) => res.render('about', {
	user: req.user
}))

router.get('/products', (req, res) => res.render('products', {
	user: req.user
}))

router.get('/events', (req, res) => res.render('events', {
	user: req.user
}))

module.exports = router
