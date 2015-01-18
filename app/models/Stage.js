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
                comment: "Для этой задачи",
                as:'StageDepForStages',
                foreignKey: 'StageId',
                foreignKeyConstraint: true
            });
            
            //перенести  в stageDir если есть фиксированный регламент выполнения этапов
            Stage.hasMany(models.DepStage, {
                comment: "Должны быть закончен",
                as:'DepStages',
                foreignKey: 'DepStageId',
                foreignKeyConstraint: true
            });

            Stage.belongsTo(models.Project,{
                as:'Project',
                foreignKeyConstraint: true
            });

            Stage.belongsTo(models.StageDir,{
                as:'StageDir',
                foreignKeyConstraint: true
            });

            Stage.belongsTo(models.StatusDir, {
                as:'StatusDir',
                foreignKeyConstraint: true 
            });

            Stage.belongsTo(models.User, {
                as: 'StageCurator',
                foreignKey: 'StageCuratorId',              
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