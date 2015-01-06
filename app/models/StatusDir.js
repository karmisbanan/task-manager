module.exports = function(sequelize, DataTypes) {

    var StatusDir = sequelize.define('StatusDir', {
        title: { 
            type: DataTypes.STRING, 
            comment: "Название статуса завершения" 
        },
    }, {
        associate: function(models) {
            StatusDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });
        }
    });

    return StatusDir;
};