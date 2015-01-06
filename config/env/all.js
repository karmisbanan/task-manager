var path = require('path'),
rootPath = path.normalize(__dirname + '/../..');

module.exports = {
	root: rootPath,
	port: 3010,
	modelsDir : rootPath + '/app/models'
    // db: process.env.MONGOHQ_URL    
}
