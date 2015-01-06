module.exports = function(sequelize, DataTypes) {

    var Company = sequelize.define('Company', {
        title: {
            type: DataTypes.STRING,
            comment: "Название компании"
        },
    }, {
        timestamps: true,
        // paranoid: true,
        associate: function(models) {
            Company.hasMany(models.User, {
                as: 'Users',
                foreignKeyConstraint: true
            });
            Company.hasMany(models.Project, {
                as: 'Projects',
                foreignKeyConstraint: true
            });
            Company.hasMany(models.StatusDir, {
                as: 'Statuses',
                foreignKeyConstraint: true
            });
            Company.hasMany(models.StageDir, {
                as: 'Stages',
                foreignKeyConstraint: true
            });
        }
    });

    return Company;
};

// module.exports = function(sequelize, DataTypes) {  
//   var definition = {
//     id: { 
//       type: DataTypes.INTEGER(10).UNSIGNED,
//       primaryKey: true,
//       autoIncrement: true
//     },
//     title: { 
//         type: DataTypes.STRING, 
//         comment: "Название компании" 
//     },
//   };
//   var Company = sequelize.define('Company', definition, {
//     classMethods: {
//       getDefinition: function() {
//         return definition;
//       },
//       associate: function(models) {
//         Company.hasMany(models.User)
//       }
//     }
//   })
//   return Company
// }