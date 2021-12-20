const Sequelize = require('sequelize')
const moment = require('moment')
const sequelize = require('../../config/web_db')

module.exports = sequelize.define('News', {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  title: {
    type: Sequelize.TEXT(),
    allowNull: false,
    primaryKey: true
  },
  content: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  updatedAt: {
	type: Sequelize.DATE,
	get: function() {
		return moment(this.getDataValue('updatedAt')).format('DD.MM.YYYY')
	}
  }
})
