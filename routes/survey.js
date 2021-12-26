const express = require('express')
const router = express.Router()
const { ensureAuthenticated } = require('../config/auth')


router.get('/', (req, res) => res.render('survey', {
	user: req.user
}))

router.post('/', (req, res, next) => {
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
	let surveyy = [
		{q: "Combien il y a de règles de sécurité ?", a: [4, 6, 8, 2]},
		{q: "Citez moi les X règles de sécurité", a: ["input"]},
		{q: "Qu'est ce que la légitime défense ?", a: ["input"]},
		{q: "Combien il y a de conditions pour \"la légitime défense\"", a: [4, 3, 5, 6]},
		{q: "Quelles sont les conditions pour la légitime défense ?", a: ["input"]},
		{
			q: "Dans quelle situation vous pouvez utilisez la légitime défense dans les cas suivants ?",
			a: [
				"Quelqu'un me braque pour avoir mon argent, je sors mon arme et lui tire dessus",
				"On cambriole ma maison, l'homme n'est pas armé, j'utilise mon arme pour lui faire peur et le faire fuir",
				"Je braque un agent du LSPD parce qu'il vient de m'amender",
				"Pour avoir une suspicion sur une personne inconnue en pleine ville",
			]
		},
		{
			q: "L'agresseur menace la victime avec un objet mortel (arme blanche, arme à feu...). Si la victime se défend immédiatement :",
			a: [
				"la victime n'est pas dans le cas d'une légitime défense.",
				"la victime est dans le cas d'une légitime défense."
			]
		},
		{q: "Une tierce personne est témoin d'une agression. Si elle intervient pendant l'acte et s'en prend à l'agresseur", a: [
			"il n'est pas dans le cadre d'une légitime défense.",
			"il est dans le cadre d'une légitime défense."
		]},
		{q: "Vous êtes victime d'intrusion dans votre propriété privée, pouvez-vous faire feu sur cette personne même si celle-ci ne présente aucune menace ?", a: [
			"Oui",
			"Non"
		]},
		{q: "L'agresseur, après avoir menacé la victime, voire l'avoir frappée, a pris la fuite et n'est donc plus menaçant. Si la victime lui tire dessus ", a: [
			"la victime n'est pas dans le cas d'une légitime défense.",
			"la victime est dans le cas d'une légitime défense."
		]},
		{q: "Citez 4 genres d'armes blanches", a: [
			"Kevlar, Marteau, Colt1911, Batte de baseball",
			"Marteau, Batte de baseball, Couteau, Pétoire",
			"Club de golf, Batte de baseball, Kevlar, Marteau",
			"Batte de baseball, Couteau, Cran d'arrêt, Marteau"
		]},
		{q: "Qu'est ce que le \"CEVITAL\"", a: [
			"Certitude, Eviscération, Vélocité, Identification, Tarif, Armurerie, Linguistique",
			"Concentration, Elévation, Viser, Index, Tournage, Analyser, Légal",
			"Certitude, Elévation, Viser, Index, Tirer, Analyse, Latéral",
	
		]},
		{q: "Quelles sont les armes que vous pouvez utiliser sans le PPA ?", a: [
			"Colt1911",
			"Marteau",
			"Couteau",
			"Cran d'arrêt",
			"Lance roquette",
			"Club de golf",
			"Ak-47"
		]},
		{q: "Que vous faut-il pour pouvoir passer le test du PPA ?", a: [
			"Un casier ne comportant pas de grosse sanction et un test psychologique",
			"Un casier judiciaire vierge ainsi qu'un test réussi psychotechnique",
			"Un connaissance accrue des armes à feu",
			"Faire ami/ami avec les employés de l'Ammu Nation"
		]},
	]
	
	let questions = surveyy[Math.floor(Math.random() * surveyy.length)];
	console.log(questions)
	res.render('survey3', { user: req.user, questions })
})


module.exports = router
