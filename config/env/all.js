var path = require('path'),
rootPath = path.normalize(__dirname + '/../..');

module.exports = {
	root: rootPath,
	port: 3010,
	modelsDir : rootPath + '/app/models'
    // db: process.env.MONGOHQ_URL    
}


/*
*получаем дату из строки, числа, объекта
*/
Date.getDateObjFromStrNumObj = function(value){
    if(!isNaN(+value)&&(value!="")){
        return new Date(+value);
    }else{
        var dDate = new Date(value);
        if(dDate != "Invalid Date"){
            return new dDate;
        }else{
            return undefined;
        }
    }   
}


