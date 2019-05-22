/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var webSocket = new WebSocket("ws://localhost:8080/MyRatingSystem-Sanu/message");

webSocket.onopen = function (message) {
    openProcessing(message);
};
webSocket.onmessage = function (message) {
    messagemProcessing(message);
};
webSocket.onclose = function (message) {
    closeProcessing(message);
};
webSocket.onerror = function (message) {
    errorProcessing(message);
};

function openProcessing(message) {
    console.log(message);
}

function messagemProcessing(message) {
    $('#mme')[0].play();
    refresh();
    alertify.log("You Received A Message..!");
    $("#messageAre").animate({"scrollTop": $('#messageAre')[0].scrollHeight}, "slow");

}

function closeProcessing(message) {
    console.log(message);
}

function errorProcessing(message) {
    console.log(message);
}

$("#msendbtn").click(function () {
    webSocket.send("");
});