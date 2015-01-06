module.exports = function(sequelize, DataTypes) {

    var PostDir = sequelize.define('PostDir', {
        title: {
            type: DataTypes.STRING,
            comment: "Название должности"
        },
    }, {
        associate: function(models) {
            PostDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });
        }
    });

    return PostDir;
};