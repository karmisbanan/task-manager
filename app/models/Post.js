module.exports = function(sequelize, DataTypes) {
	//должности на определенном проекте
    var Post = sequelize.define('Post', {
        
    }, {
        associate: function(models) {
            /*PostDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });*/
        }
    });

    return Post;
};