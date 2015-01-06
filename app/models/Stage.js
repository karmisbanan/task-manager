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
            Stage.belongsTo(models.StatusDir, {
                foreignKeyConstraint: true
            });
            Stage.belongsTo(models.StageDir, {
                foreignKeyConstraint: true
            });
        }
    });

    return Stage;
};