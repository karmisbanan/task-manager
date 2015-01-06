module.exports = function(sequelize, DataTypes) {

    var StatusDir = sequelize.define('StatusDir', {
        title: { 
            type: DataTypes.STRING, 
            comment: "Название статуса завершения" 
        },
    }, {
        associate: function(models) {
            StatusDir.hasMany(models.Stage, {
                foreignKeyConstraint: true 
            });
            StatusDir.hasMany(models.Task, {
                foreignKeyConstraint: true 
            });

            /*StatusDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });*/
        }
    });

    return StatusDir;
};