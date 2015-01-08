<?php
/*
 * main.php
 * 
 * Copyright 2014 Imancha <imancha_266@ymail.com>
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

	/*	Connect to database	*/
	function mysql_open(){
		$host = "localhost";
		$username = "root";
		$password = "root";
		$database = "Doa";

		mysql_connect($host, $username, $password) or die(mysql_error());
		mysql_select_db($database);
	}

	function home(){
		mysql_open();
		$sql = "SELECT * FROM doa ORDER BY nama ASC";
		$res = mysql_query($sql) or die(mysql_error());

		if(mysql_num_rows($res) > 0){
			echo '<section class="section home">						
							<div class="row">';
			while($row = mysql_fetch_array($res)){				
				if($row['id'] != 2 AND $row['id'] != 7 AND $row['id'] != 9 AND $row['id'] != 20 AND $row['id'] != 21 AND $row['id'] != 22 AND $row['id'] != 25){
					echo '	<div class="col-xs-12 col-sm-3 col-md-2 padding">
										<div class="tile tile-item bg-aqua">
											<a class="ascensorLink ascensorLink'.++$i.' tile-nav">
												<h5 class="h5">'.$row['nama'].'</h5>
												<span><img class="img" width="100%" src="./img/'.$row['id'].'.png"></span>
											</a>
										</div>
									</div>';
				}
			}
			echo '	</div>
						</section>';		
		}
		mysql_close();		
	}

	function content(){
		mysql_open();
		mysql_query("SET CHARACTER SET utf8");
		$sql = "SELECT * FROM `doa` HAVING `id` NOT IN (2,7,9,20,21,22,25) ORDER BY `nama` ASC";
		$res = mysql_query($sql) or die(mysql_error());

		if(mysql_num_rows($res) > 0){
			while($row = mysql_fetch_array($res)){
				echo '<section class="section doa-'.++$i.'">
								<div class="container">
									<h1 class="h2 lead judul" style="margin-bottom:0px">'.$row['nama'].'</h1>									
									<div class="row">										
										<div class="col-xs-12">
											<div class="brick">
												<h3 class="h3 border arab" style="font-size:1.75em">بِسْمِ اللهِ الرَّحْمنِ الرَّحِيْمِ</h3>
												<div class="padding">													
													<h2 class="h2 lead arab">'.$row['arab'].'</h2>
												</div>
												<div class="padding">
													<h3 class="text-muted line baca"><i>'.$row['baca'].'</i></h3>
												</div>
												<div class="padding">
													<h3 class="line arti">'.$row['arti'].'</h3>
												</div>												
											</div>
										</div>
									</div>
								</div>
							</section>';
			}
		}
		mysql_close();
	}

	function main(){
		home();
		content();
	}

	main();
?>
