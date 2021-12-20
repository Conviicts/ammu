const Sequelize = require('sequelize')
const sequelize = require('../../config/web_db')

module.exports = sequelize.define('Users', {
  id: {
    type: Sequelize.INTEGER(11),
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  email: {
    type: Sequelize.STRING(255),
    allowNull: false,
    primaryKey: true
  },
  password: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  points: {
    type: Sequelize.INTEGER(11),
    defaultValue: 0,
    allowNull: false,
    primaryKey: true
  },
  steamid: {
    type: Sequelize.STRING(255),
    allowNull: false
  },
  role: {
    type: Sequelize.INTEGER(11),
    defaultValue: 0,
    allowNull: false
  },
  canPassTest: {
    type: Sequelize.INTEGER(10),
    allowNull: false,
    defaultValue: 0
  }
})
