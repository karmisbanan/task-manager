module.exports = function(sequelize, DataTypes) {
	//должности на определенном проекте
    var Post = sequelize.define('Post', {
        
    }, {
        associate: function(models) {
            Post.belongsTo(models.PostDir, {
                foreignKeyConstraint: true 
            });
            Post.belongsTo(models.Project, {
                foreignKeyConstraint: true
            });
            Post.belongsTo(models.User, {
                            
                foreignKeyConstraint: true
            });
            /*PostDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });*/
        }
    });

    return Post;
};