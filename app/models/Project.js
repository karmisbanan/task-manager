module.exports = function(sequelize, DataTypes) {
    //проекты
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
            comment: "Дата начала проекта",
            set: function(v){
                this.setDataValue('dateStart',Date.getDateObjFromStrNumObj(v));
            }
        },
        dateEnd: {
            type: DataTypes.DATE,
            comment: "Дата окончания проекта",
            set: function(v){
                this.setDataValue('dateEnd',Date.getDateObjFromStrNumObj(v));
            }
        },
    }, {
        timestamps: true,
        // paranoid: true,
        associate: function(models) {
            Project.hasMany(models.Stage, {
                as:'ProjectStages',
                foreignKeyConstraint: true
            });

            Project.hasMany(models.Post, {
                as:'ProjectPosts',
                foreignKeyConstraint: true
            });

            Project.belongsTo(models.User, {
                as:'ProjectCurator',
                foreignKey: 'ProjectCuratorId',               
                foreignKeyConstraint: true
            });

            Project.belongsTo(models.User, {
                as:'ProjectClient',
                foreignKey: 'ProjectClientId',              
                foreignKeyConstraint: true
            });

            Project.belongsTo(models.AbstractStage, {
                as:'CurrentProgressAbsSt',
                foreignKey:'CurrentProgressAbsStId',
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