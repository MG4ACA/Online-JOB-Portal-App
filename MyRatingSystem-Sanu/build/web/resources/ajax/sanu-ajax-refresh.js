/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//refresh
function refresh() {
    $.getJSON("refresh", function () {

    });
}
setInterval("refresh()", 60000);

$('<audio id="mme"><source src="resources/media/tap_tap_tap.mp3" type="audio/mpeg"></audio>').appendTo('body');
$('<audio id="erso"><source src="resources/media/notification48.mp3" type="audio/mpeg"></audio>').appendTo('body');
$('<audio id="othe"><source src="resources/media/notification48.mp3" type="audio/mpeg"></audio>').appendTo('body');
$('<audio id="chatty"><source src="resources/media/notification.mp3" type="audio/mpeg"></audio>').appendTo('body');
$('<audio id="clike"><source src="resources/media/da_click.mp3" type="audio/mpeg"></audio>').appendTo('body');

//$("#chat").animate({"scrollTop": $('#chat')[0].scrollHeight}, "slow");
//$('#message')[0].play();
//$('#erso')[0].play();
//$('#clike')[0].play();