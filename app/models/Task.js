module.exports = function(sequelize, DataTypes) {
    //задачи проекта по подэтапу
    var Task = sequelize.define('Task', {
        title: {
            type: DataTypes.STRING,
            comment: "Название задачи"
        },
        description: {
            type: DataTypes.TEXT,
            comment: "Описание задачи"
        },
        dateStart: {
            type: DataTypes.DATE,
            comment: "Дата начала решение задачи"
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания решение задачи"
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

            Task.belongsTo(models.PriorityDir, {
                foreignKeyConstraint: true 
            });

            Task.belongsTo(models.Stage,{
                foreignKeyConstraint: true
            });

            Task.belongsTo(models.StatusDir, {
                foreignKeyConstraint: true 
            });

            Task.belongsTo(models.User, {
                foreignKey: 'TaskExecutorId',              
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