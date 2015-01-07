module.exports = function(sequelize, DataTypes) {
    //отделы и группы
    var Department = sequelize.define('Department', {
        title: {
            type: DataTypes.STRING,
            comment: "Название отдела или группы"
        }
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            /*Department.hasMany(models.StageDir, {
                foreignKeyConstraint: true
            });*/

            Department.hasMany(models.Department, {
                foreignKey: "ParentDepartmentId",
                foreignKeyConstraint: true
            });

            Department.hasMany(models.StageExecutors,{
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

    return Department;
};