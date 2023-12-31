﻿
<!DOCTYPE html>
<cfoutput>
<html>
  <head>
	<title>Recipe Box</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--- Latest compiled and minified CSS --->
	<link href="//netdna.bootstrapcdn.com/bootswatch/3.0.2/yeti/bootstrap.min.css" rel="stylesheet">
	<link href="/assets/css/site.css" rel="stylesheet">
	<!--- JavaScript plugins (requires jQuery) --->
  	<script src="//code.jquery.com/jquery.js"></script>
	<!--- Latest compiled and minified JavaScript --->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>


  </head>
  <body>
    <cfoutput>
    <div class="navbar navbar-default">
      <div class="container">
        <a class="navbar-brand" href="/">Recipe Box</a>
        <cfif prc.isLoggedIn>
			<ul class="nav navbar-nav pull-right">
				<li><a href="#event.buildLink("recipes")#">Recipes</a></li>
				<li class="dropdown">
				<a href="##" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> <span class="caret"></span></a>
				<ul class="dropdown-menu">
				<li><a href="#event.buildLink("settings")#">Settings</a></li>
				<li><a href="#event.buildLink("security.logout")#">Logout</a></li>
				</ul>
				</li>
			</ul>
		<cfelse>
			<ul class="nav navbar-nav pull-right">
				<li><a href="#event.buildLink("register")#">Sign Up</a></li>
			</ul>
        </cfif>
      </div>
    </div>
    </cfoutput>
    <div class="container">
		#renderView()#
	</div>
  </body>
</html>
</cfoutput>
