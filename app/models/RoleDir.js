module.exports = function(sequelize, DataTypes) {
    //словарь ролей
    var RoleDir = sequelize.define('RoleDir', {
        title: { 
            type: DataTypes.STRING, 
            comment: "Название роли" 
        },
    }, {
        associate: function(models) {
            RoleDir.hasMany(models.User, {
                foreignKeyConstraint: true 
            });
            /*RoleDir.belongsTo(models.Company, {
                foreignKeyConstraint: true 
            });*/
        }
    });

    return RoleDir;
};