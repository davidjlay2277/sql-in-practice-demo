// COMMON BOILER PLATE 
const sequelize = new Sequelize(process.env.CONNECTION_STING, {
    dialect: 'postgress' ,
    dialectOptions: {
        ssl: {
            rejectUnauthorized: false
        }
    }
})
