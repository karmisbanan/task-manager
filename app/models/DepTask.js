module.exports = function(sequelize, DataTypes) {
    //зависимость задач 
    var DepTask = sequelize.define('DepTask', {
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            
            DepTask.belongsTo(models.Task, {
                foreignKey: 'TaskId',
                foreignKeyConstraint: true
            });

            DepTask.belongsTo(models.Task, {
                comment: "Должна быть выполнена",
                foreignKey: 'DepTaskId',
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

    return DepTask;
};