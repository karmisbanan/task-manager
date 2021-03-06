module.exports = function(sequelize, DataTypes) {
    //словарь должностей
    var PostDir = sequelize.define('PostDir', {
        title: {
            type: DataTypes.STRING,
            comment: "Название должности"
        },
    }, {
        associate: function(models) {
            PostDir.hasMany(models.Post, {
                foreignKeyConstraint: true 
            });
        }
    });

    return PostDir;
};