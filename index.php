<!--
/*
 * index.php
 *
 * Copyright 2015 Imancha <imancha_266@ymail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 *
 *
 */
-->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Doa Sehari Hari">
    <meta name="author" content="Mohammad Abdul Iman Syah">
    <link rel="icon" href="favicon.ico">

    <title>Doa Sehari Hari</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Ionicons -->
    <link href="css/ionicons.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
		<nav class="navbar navbar-fixed-bottom navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="ascensorLinkPrev navbar-brand"> <i class="glyphicon glyphicon-arrow-left fa-fw fa-2x"></i> </a>
					<a class="ascensorLink ascensorLink0 navbar-brand home-link"> <i class="glyphicon glyphicon-home fa-fw fa-2x"></i> </a>
					<a class="ascensorLinkNext navbar-brand"> <i class="glyphicon glyphicon-arrow-right fa-fw fa-2x"></i> </a>
				</div>
			</div>
		</nav>
		<div id="loading"></div>
		<div id="ascensor"></div>
		<div id="quiz"></div>
		<div id="info"></div>
		<div id="tright" data-toggle="tooltip" data-placement="bottom" data-original-title="Quiz" onclick="quiz()"><button class="btn"><i class="fa fa-lightbulb-o fa-4x"></i></button></div>		
		<div id="bleft" data-toggle="tooltip" data-placement="top" data-original-title="Info" onclick="info()"><button class="btn"><i class="fa fa-info fa-3x"></i></button></div>		

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/main.js"></script>
    <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.awesome-cursor.min.js"></script>
		<script src="js/jquery.ascensor.js"></script>
		<script src="js/script.js"></script>
	</body>
</html>
