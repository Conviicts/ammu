const Sequelize = require('sequelize')

const sequelize = new Sequelize('ammu', 'root', 'DQOoWSjpjliaKkd0', {
  host: '127.0.0.1',
  dialect: 'mysql',
  define: { freezeTableName: true }
})

module.exports = sequelize
global.sequelize = sequelize
