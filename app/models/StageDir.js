module.exports = function(sequelize, DataTypes) {
    //словарь подэтапов
    var StageDir = sequelize.define('StageDir', {
        title: { 
            type: DataTypes.STRING, 
            comment: "Название подэтапа" 
        },
    }, {
        associate: function(models) {
            StageDir.hasMany(models.Stage,{
                foreignKeyConstraint: true
            });

            StageDir.hasMany(models.StageExecutors,{
                foreignKeyConstraint: true
            });

            StageDir.belongsTo(models.AbstractStage, {
                foreignKeyConstraint: true
            });
            /*StageDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });*/
        }
    });

    return StageDir;
};