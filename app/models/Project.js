module.exports = function(sequelize, DataTypes) {

    var Project = sequelize.define('Project', {
        title: {
            type: DataTypes.STRING,
            comment: "Название проекта"
        },
        description: {
            type: DataTypes.TEXT,
            comment: "Описание проекта"
        },
        budget: {
            type: DataTypes.DECIMAL(10, 2),
            comment: "Бюджет"
        },
        dateStart: {
            type: DataTypes.DATE,
            comment: "Дата начала проекта"
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания проекта"
        },
    }, {
        timestamps: true,
        // paranoid: true,
        associate: function(models) {
            Project.hasMany(models.Stage, {
                foreignKeyConstraint: true
            });

            Project.hasMany(models.Post, {
                foreignKeyConstraint: true
            });
            /*Project.hasMany(models.Stage, {
                foreignKeyConstraint: true
            });*/

            

            /*Project.belongsTo(models.Stage, {
                foreignKeyConstraint: true
            });*/
            /*Project.belongsTo(models.Company, {
                as: 'Company',
                foreignKeyConstraint: true
            });
            Project.hasMany(models.User, {
                as: 'Curators',
                through: 'projects_curators',
                foreignKeyConstraint: true
            });
            Project.hasMany(models.User, {
                as: 'Employees',
                through: 'projects_employees',
                foreignKeyConstraint: true
            });
            Project.hasMany(models.User, {
                as: 'Clients',
                through: 'projects_clients',
                foreignKeyConstraint: true
            });
*/
        }
    });

    return Project;
};