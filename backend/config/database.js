const { Sequelize,QueryTypes  } = require('sequelize');


// kết nối docker
// const sequelize = new Sequelize(process.env.DATABASE_URL, {
//   dialect: 'mysql'
// });

// kết nối localhost
const sequelize = new Sequelize('TVU', 'AdminTVU', 'CongNgheThongTin-DA20TTB', {
  host: '103.200.20.110',
  dialect: 'mysql',
});

// Hàm kiểm tra kết nối
async function testConnection() {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
    
    // Thực hiện một truy vấn SQL đơn giản
    const result = await sequelize.query('SELECT * FROM `plos` WHERE 1', { type: QueryTypes.SELECT });
    console.log('Query result:', result);
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
}

// Gọi hàm kiểm tra kết nối
testConnection();

module.exports = sequelize;
