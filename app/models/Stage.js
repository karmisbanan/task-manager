module.exports = function(sequelize, DataTypes) {

    var Stage = sequelize.define('Stage', {
        title: {
            type: DataTypes.STRING,
            comment: "Название этапа"
        },
        dateStart: {
            type: DataTypes.DATE,
            comment: "Дата начала этапа"
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания этапа"
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