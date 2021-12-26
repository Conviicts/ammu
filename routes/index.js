const express = require('express')
const router = express.Router()
const { ensureAuthenticated } = require('../config/auth')
const News = require('../models/web/News')
const Key = require('../models/web/Key')

// Welcome Page
router.get('/', (req, res) =>  { 
	News.findAll({ order: [['createdAt', 'DESC']] })
    .then(news => { 
		news.forEach(neww => {
			neww.content = neww.content.substr(1, 70)
		});
		res.render('welcome', { user: req.user }) 
	})
    .catch(err => console.error(err))
})

router.get('/services', (req, res) => res.render('training', {
	user: req.user
}))

router.get('/formation', (req, res) => res.render('formation', {
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

router.get('/gallery', (req, res) => res.render('gallery', {
	user: req.user
}))

router.get('/pictures', (req, res) => res.render('pictures', {
	user: req.user
}))

router.get('/survey', (req, res) => res.render('survey', {
	user: req.user
}))

router.post('/survey', (req, res, next) => {
	Key.findAll({ where: { key: req.body.key }})
    .then(key => {
		if (!key || key == "")
			res.render('survey', { user: req.user })
		else
			res.render("survey2", { user: req.user });
	})
    .catch(err => console.error(err))
})

router.post('/survey2', (req, res, next) => {
	console.log(req.body);
	res.render('survey3', { user: req.user })
})


module.exports = router
