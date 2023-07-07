

# Demo CFML Application using cfmigrations

A simple demo application using the [cfmigrations](https://github.com/coldbox-modules/cfmigrations) library to database development.

### Database Setup

Use an existing SQL Server or migrate use Docker.

```
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourS3cureP@ss0rdH3re" -p 1433:1433 --name mssql -d mcr.microsoft.com/mssql/server:2019-latest
```

Then you can connect and create the database like this.

```
docker exec -it mssql bash

mssql@d653475c96de:/$ /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourS3cureP@ss0rdH3re
1> create database RecipeBox;
2> GO
```
