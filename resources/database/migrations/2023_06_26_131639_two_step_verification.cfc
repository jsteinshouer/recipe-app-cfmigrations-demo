component {
    
    function up( schema, query ) {

        // queryExecute("
            // ALTER TABLE dbo.[user] ADD two_factor_auth_enabled bit;
            // ALTER TABLE dbo.[user] ADD two_factor_auth_key varchar(50);
        // ");

        schema.alter( "user", function( table ) {
            table.addColumn( table.boolean( "two_factor_auth_enabled" ).nullable() );
            table.addColumn( table.string( "two_factor_auth_key",50 ).nullable() );
        } );
    }

    function down( schema, query ) {

        // queryExecute("
        //     DROP TABLE IF EXISTS dbo.[user];
        //     DROP TABLE IF EXISTS dbo.recipe;
        // ");

        schema.alter( "user", function( table ) {
            table.dropColumn( "two_factor_auth_enabled" );
            table.dropColumn( "two_factor_auth_key" );
        } );

    }

}
