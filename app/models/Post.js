module.exports = function(sequelize, DataTypes) {

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