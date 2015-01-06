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
        runtime: {
            type: DataTypes.DATE,
            comment: "Время на решение задачи"
        }
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            Task.hasMany(models.User, {
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
        }
    });

    return Task;
};