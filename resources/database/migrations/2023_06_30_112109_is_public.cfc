component {
    
    function up( schema, qb ) {
        schema.alter( "recipe", function( table ) {
            table.addColumn( table.boolean( "is_public" ).default( 0 ) );
        } );
    }

    function down( schema, qb ) {
         schema.alter( "recipe", function( table ) {
            table.dropColumn( "is_public" );
        } );
    }

}
