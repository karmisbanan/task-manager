module.exports = function(sequelize, DataTypes) {

    var StageDir = sequelize.define('StageDir', {
        title: { 
            type: DataTypes.STRING, 
            comment: "Название этапа" 
        },
    }, {
        associate: function(models) {
            StageDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });
        }
    });

    return StageDir;
};