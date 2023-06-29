component {
    
    function up( schema, query ) {

        // queryExecute("
        //     CREATE TABLE dbo.[user] (
        //         user_id int IDENTITY(1,1),
        //         first_name VARCHAR(50),
        //         last_name VARCHAR(50),
        //         username VARCHAR(50),
        //         password VARCHAR(150),
        //         PRIMARY KEY (user_id)
        //     );

        //     CREATE TABLE dbo.recipe (
        //         recipe_id INT IDENTITY(1,1),
        //         title VARCHAR(50),
        //         description VARCHAR(100),
        //         ingredients VARCHAR(max),
        //         directions VARCHAR(max),
        //         PRIMARY KEY (recipe_id)
        //     );
        // ");

        schema.dropIfExists( "user" );
        schema.dropIfExists( "recipe" );
        schema.create( "user", function(table) {
			table.increments( "user_id" );
			table.string( "first_name",50 );
			table.string( "last_name",50 );
			table.string( "username",50 );
			table.string( "password",150 );
		} );
        schema.create( "recipe", function(table) {
			table.increments( "recipe_id" );
			table.string( "title",50 );
			table.string( "description", 100 );
			table.text( "ingredients" );
			table.text( "directions" );
            table.integer("user_id")
            table.foreignKey( "user_id" ).references( "user_id" ).onTable( "user" );
		} );
    }

    function down( schema, query ) {

        // queryExecute("
        //     DROP TABLE IF EXISTS dbo.[user];
        //     DROP TABLE IF EXISTS dbo.recipe;
        // ");

        schema.dropIfExists( "user" );
        schema.dropIfExists( "recipe" );

    }

}
