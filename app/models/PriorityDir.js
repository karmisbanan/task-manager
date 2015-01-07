module.exports = function(sequelize, DataTypes) {
    //словарь приоритетов
    var PriorityDir = sequelize.define('PriorityDir', {
        title: {
            type: DataTypes.STRING,
            comment: "Приоритет"
        },
    }, {
        associate: function(models) {
            PriorityDir.hasMany(models.Task, {
                foreignKeyConstraint: true 
            });
        }
    });

    return PriorityDir;
};