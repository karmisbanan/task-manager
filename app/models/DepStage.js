module.exports = function(sequelize, DataTypes) {
    //зависимость подэтапов 
    var DepStage = sequelize.define('DepStage', {
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            //перенести  в stageDir если есть фиксированный регламент выполнения этапов
            DepStage.belongsTo(models.Stage, {
                foreignKey: 'StageId',
                foreignKeyConstraint: true
            });
            
            //перенести  в stageDir если есть фиксированный регламент выполнения этапов
            DepStage.belongsTo(models.Stage, {
                comment: "Должнен быть закончен",
                foreignKey: 'DepStageId',
                foreignKeyConstraint: true
            });
            
            /*DepTask.hasMany(models.User, {
                as: 'Employees',
                through: 'deptasks_employees',
                foreignKeyConstraint: true
            });
            DepTask.belongsTo(models.StatusDir, {
                foreignKeyConstraint: true
            });
            DepTask.belongsTo(models.Task, {
                foreignKeyConstraint: true
            });*/
        }
    });

    return DepStage;
};