var crypto = require( 'crypto' );

module.exports = function ( sequelize, DataTypes ) {

    var User = sequelize.define( 'User', {
        name: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                notEmpty: true,
            }
        },
        email: {
            type: DataTypes.STRING,
            unique: true,
            allowNull: false,
            validate: {
                isEmail: true,
                notEmpty: true,
            }
        },
        username: {
            type: DataTypes.STRING,
            unique: true,
            allowNull: false,
            validate: {
                notEmpty: true,
            }
        },
        hashedPassword: {
            type: DataTypes.STRING
        },
        provider: {
            type: DataTypes.STRING
        },
        salt: {
            type: DataTypes.STRING
        },
        // facebookUserId: DataTypes.INTEGER,
        // twitterUserId: DataTypes.INTEGER,
        // twitterKey: DataTypes.STRING,
        // twitterSecret: DataTypes.STRING,
        // github: DataTypes.STRING,
        // openId: DataTypes.STRING
    }, {
        timestamps: true,
        paranoid: true,
        instanceMethods: {
            makeSalt: function () {
                return crypto.randomBytes( 16 ).toString( 'base64' );
            },
            authenticate: function ( plainText ) {
                var hashedPassword = this.encryptPassword( plainText, this.salt );
                console.log( 'Hashed: ' + hashedPassword );
                console.log( 'user hashd paswrd: ' + this.hashedPassword );
                return this.encryptPassword( plainText, this.salt ) === this.hashedPassword;
            },
            encryptPassword: function ( password, salt ) {
                if ( !password || !salt ) return '';
                salt = new Buffer( salt, 'base64' );
                return crypto.pbkdf2Sync( password, salt, 10000, 64 ).toString( 'base64' );
            }
        },
        associate: function ( models ) {
            User.hasMany( models.Project, {
                foreignKey: 'ProjectCuratorId',
                foreignKeyConstraint: true
            } );

            User.hasMany( models.Project, {
                
                foreignKey: 'ProjectClientId',
                foreignKeyConstraint: true
            } );

            User.hasMany( models.Task, {
                foreignKey: 'TaskExecutorId',
                foreignKeyConstraint: true
            } );

            User.hasMany( models.Post, {

                foreignKeyConstraint: true
            } );

            User.hasMany( models.Stage, {
                foreignKey: 'StageCuratorId',
                foreignKeyConstraint: true
            } );

            User.belongsTo( models.RoleDir, {
                foreignKeyConstraint: true
            } );



            /*User.hasMany(models.Project, {
                as: 'Project',
                through: 'projects_employees',
                foreignKeyConstraint: true
            });
            
            User.hasMany(models.Project, {
                as: 'Clients',
                through: 'projects_clients',
                foreignKeyConstraint: true
            });
            User.hasMany(models.DepTask, {
                as: 'DepTaskEmployees',
                through: 'deptasks_employees',
                foreignKeyConstraint: true
            });
            User.hasMany(models.Task, {
                as: 'TaskEmployees',
                through: 'tasks_employees',
                foreignKeyConstraint: true
            });
            User.belongsTo(models.RoleDir, {
                foreignKeyConstraint: true
            });
            User.belongsTo(models.PostDir, {
                foreignKeyConstraint: true
            });
            User.belongsTo(models.Company, {
                foreignKeyConstraint: true
            });*/
        }
    } );

    return User;
};