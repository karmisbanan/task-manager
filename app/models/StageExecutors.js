module.exports = function(sequelize, DataTypes) {

    var StageExecutors = sequelize.define('StageExecutors', {
    }, {
        timestamps: true,
        paranoid: true,
        associate: function(models) {
            
            
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

    return StageExecutors;
};