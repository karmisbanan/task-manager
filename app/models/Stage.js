module.exports = function(sequelize, DataTypes) {
    //подэтапы на проекте
    var Stage = sequelize.define('Stage', {
        dateStart: {
            type: DataTypes.DATE,
            comment: "Дата начала подэтапа проекта"
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания подэтапа проекта"
        },
    }, {
        associate: function(models) {
            Stage.hasMany(models.Task,{
                foreignKeyConstraint: true
            });

            //перенести  в stageDir если есть фиксированный регламент выполнения этапов
            Stage.hasMany(models.DepStage, {
                foreignKey: 'StageId',
                foreignKeyConstraint: true
            });
            
            //перенести  в stageDir если есть фиксированный регламент выполнения этапов
            Stage.hasMany(models.DepStage, {
                comment: "Должнен быть закончен",
                foreignKey: 'DepStageId',
                foreignKeyConstraint: true
            });

            /*Stage.belongsTo(models.StageDir, {
                foreignKeyConstraint: true
            });*/



            /*Stage.belongsTo(models.Project,{
                foreignKeyConstraint: true
            });*/


            /*Stage.belongsTo(models.StatusDir, {
                foreignKeyConstraint: true
            });
            Stage.belongsTo(models.StageDir, {
                foreignKeyConstraint: true
            });*/
        }
    });

    return Stage;
};