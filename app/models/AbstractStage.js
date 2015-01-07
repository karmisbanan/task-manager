module.exports = function(sequelize, DataTypes) {
    //постоянные большие этапы: предпрод, прод, постпрод
    var AbstractStage = sequelize.define('AbstractStage', {
        title: {
            type: DataTypes.STRING,
            comment: "Название этапа"
        }
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            AbstractStage.hasMany(models.StageDir, {
                foreignKeyConstraint: true
            });

            AbstractStage.hasMany(models.Project, {
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

    return AbstractStage;
};