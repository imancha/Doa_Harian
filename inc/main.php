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
									<div class="row">
										<div class="refresh">											
											<audio id="music'.$row['id'].'"><source src="./mp3/'.$row['id'].'.mp3" type="audio/mp3"></audio>																							
											<button class="btn" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio" onclick="play('.$row['id'].')"><i id="stateicon'.$row['id'].'" class="fa fa-volume-up fa-3x"></i></button>
										</div>
									</div>
								</div>
							</section>';
			}
		}
		mysql_close();
	}

	function quiz(){
		mysql_open();
		mysql_query("SET CHARACTER SET utf8");
		$sql = "SELECT * FROM `kuis` ORDER BY RAND() LIMIT 1";
		$res = mysql_query($sql) or die(mysql_error());
		if(mysql_num_rows($res) == 1){
			$row = mysql_fetch_assoc($res);
			$ia = $ib = $ic = '<i class="fa fa-frown-o"></i>';
			$ta = $tb = $tc = 'Salah';
			switch($row['jawaban']){
				case 'a': $ia = '<i class="fa fa-smile-o"></i>'; $ta = 'Benar'; break;
				case 'b': $ib = '<i class="fa fa-smile-o"></i>'; $tb = 'Benar'; break;
				case 'c': $ic = '<i class="fa fa-smile-o"></i>'; $tc = 'Benar'; break;
			}
			echo '<div class="section">
							<div class="container">
								<div class="row">
									<div class="col-xs-12">
										<div class="brick">
											<h3 class="h3 border arab" style="font-size:1.75em">بِسْمِ اللهِ الرَّحْمنِ الرَّحِيْمِ</h3>
											<div class="padding">
												<h2 class="h2 lead arab">'.$row['soal'].'</h2>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
										<div class="contact-box">
											<h3 class="h3 lead">'.$row['keterangan'].'?</h3>
											<button data-toggle="modal" class="btn btn-danger btn-block" role="button" data-target="#a">'.$row['a'].'</button>
											<button data-toggle="modal" class="btn btn-warning btn-block" role="button" data-target="#b">'.$row['b'].'</button>
											<button data-toggle="modal" class="btn btn-success btn-block" role="button" data-target="#c">'.$row['c'].'</button>
										</div>
									</div>
									<div class="modal fade" id="a" tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog">
											<div class="contact-box">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<div class="icon">'.$ia.'</div>
												<div class="text">'.$ta.'</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="b" tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog">
											<div class="contact-box">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<div class="icon">'.$ib.'</div>
												<div class="text">'.$tb.'</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="c" tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog">
											<div class="contact-box">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<div class="icon">'.$ic.'</div>
												<div class="text">'.$tc.'</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="refresh"><button class="btn" data-toggle="tooltip" data-placement="bottom" data-original-title="Ganti Soal" title="Ganti Soal" onclick="quiz()"><i class="fa fa-refresh fa-3x"></i></button></div>
								</div>
							</div>
						</div>';
		}
		mysql_close();
	}

	function info(){
		echo '<div class="section">
						<div class="container">
							<h1 class="h1">Creative Team</h1>
							<div class="row" style="margin: 0 7%">
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="team-member">
										<img src="./img/dinar.jpg" alt="team_member" />
										<h3 class="h3 lead">Dinar Priskawati</h3>
										<h5 class="h5">Developer</h5>
										<ul class="member-social">
											<li><a href="https://twitter.com/ImanchaOS" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
											<li><a href="https://www.facebook.com/imancha.os" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
											<li><a href="https://www.google.com/+ImanSyahOS" target="_blank"><i class="fa fa-google-plus fa-2x"></i></a></li>
										</ul>
									</div>
								</div>								
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="team-member">
										<img src="./img/iman.jpg" alt="team_member" />
										<h3 class="h3 lead">Moh. Abdul Iman Syah</h3>
										<h5 class="h5">Developer</h5>
										<ul class="member-social">
											<li><a href="https://twitter.com/ImanchaOS" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
											<li><a href="https://www.facebook.com/imancha.os" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
											<li><a href="https://www.google.com/+ImanSyahOS" target="_blank"><i class="fa fa-google-plus fa-2x"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="team-member">
										<img src="./img/ocha.png" alt="team_member" />
										<h3 class="h3 lead">Rosalina Fazriah</h3>
										<h5 class="h5">Developer</h5>
										<ul class="member-social">
											<li><a href="https://twitter.com/ImanchaOS" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
											<li><a href="https://www.facebook.com/imancha.os" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
											<li><a href="https://www.google.com/+ImanSyahOS" target="_blank"><i class="fa fa-google-plus fa-2x"></i></a></li>
										</ul>
									</div>
								</div>
							</div>							
						</div>						
					</div>
					<div class="footer text-muted">Designed by: <a href="#a">QuickMetro</a>; <a href="#a">OnebitMobile</a>; <a href="#a">Imancha</a> - All Right Reserved</div>';
	}

	if($_GET['!']=='quiz'){quiz();}
	else if($_GET['!']=='info'){info();}
	else{home(); content();}
?>
