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
            comment: "Дата начала решение задачи",
            set: function(v){
                this.setDataValue('dateStart',Date.getDateObjFromStrNumObj(v));
            }
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания решение задачи",
            set: function(v){
                this.setDataValue('dateEnd',Date.getDateObjFromStrNumObj(v));
            }
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
                as:'TaskDepForTasks',
                foreignKey: 'TaskId',
                foreignKeyConstraint: true
            });

            Task.hasMany(models.DepTask, {
                comment: "Должна быть выполнена",
                as: 'DepTasks',
                foreignKey: 'DepTaskId',
                foreignKeyConstraint: true
            });

            Task.belongsTo(models.PriorityDir, {
                as: 'PriorityDir',
                foreignKey: 'PriorityDirId',
                foreignKeyConstraint: true 
            });

            Task.belongsTo(models.Stage,{
                as:'Stage',
                foreignKey: 'StageId',
                foreignKeyConstraint: true
            });

            Task.belongsTo(models.StatusDir, {
                as:'StatusDir',
                foreignKey: 'StatusDirId',
                foreignKeyConstraint: true 
            });

            Task.belongsTo(models.User, {
                as: 'TaskExecutor',
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