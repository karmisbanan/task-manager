module.exports = function(sequelize, DataTypes) {

    var Task = sequelize.define('Task', {
        title: {
            type: DataTypes.STRING,
            comment: "Название задачи"
        },
        description: {
            type: DataTypes.TEXT,
            comment: "Описание задачи"
        },
        priority: {
            type: DataTypes.STRING,
            comment: "Приоритет задачи"
        },
        runtime: {
            type: DataTypes.DATE,
            comment: "Время на решение задачи"
        },
        remotelink: {
            type: DataTypes.STRING,
            comment: "Ссылка на ТЗ задачи"
        }
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            

            Task.hasMany(models.DepTask, {
                foreignKey: 'TaskId',
                foreignKeyConstraint: true
            });

            Task.hasMany(models.DepTask, {
                comment: "Должна быть выполнена",
                foreignKey: 'DepTaskId',
                foreignKeyConstraint: true
            });
            /*
            */

            /*Task.hasMany(models.User, {
                as: 'Employees',
                through: 'tasks_employees',
                foreignKeyConstraint: true
            });
            Task.hasMany(models.DepTask, {
                as: 'DepTasks',
                foreignKeyConstraint: true
            });
            Task.belongsTo(models.StatusDir, {
                foreignKeyConstraint: true
            });
*/
        }
    });

    return Task;
};