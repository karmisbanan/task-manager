module.exports = function(sequelize, DataTypes) {

    var Department = sequelize.define('Department', {
        title: {
            type: DataTypes.STRING,
            comment: "Название отдела"
        }
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            Department.hasMany(models.StageDir, {
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