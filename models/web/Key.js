const Sequelize = require('sequelize')
const moment = require('moment')
const sequelize = require('../../config/web_db')

module.exports = sequelize.define('Key', {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  key: {
    type: Sequelize.STRING(255),
    allowNull: false,
    primaryKey: true
  }
})
