/*
 * main.js
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

if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
} else {
    // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        document.getElementById("ascensor").innerHTML = xmlhttp.responseText;
    }
}
xmlhttp.open("POST","./inc/main.php",true);
xmlhttp.send();

function quiz(){
	if (window.XMLHttpRequest){ xmlhttp=new XMLHttpRequest();}
	else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
	xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        document.getElementById("quiz").innerHTML = xmlhttp.responseText;
    }
	}
	xmlhttp.open("GET","./inc/main.php?!=quiz",true);
	xmlhttp.send();
}
function info(){
	if (window.XMLHttpRequest){ xmlhttp=new XMLHttpRequest();}
	else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
	xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        document.getElementById("info").innerHTML = xmlhttp.responseText;
    }
	}
	xmlhttp.open("GET","./inc/main.php?!=info",true);
	xmlhttp.send();
}
function play(id){
	var audio = document.getElementById("music"+id);
	if (audio.paused) {		
		audio.play();
	} else {		
		audio.pause();
    audio.currentTime = 0;
	}
}
