//var startTime;
//var localStream;
//
//var pc1;
//var pc2;
//var offerOptions = {
//    offerToReceiveAudio: 1,
//    offerToReceiveVideo: 1
//};
//
//var startButton = document.getElementById('startButton');
//var callButton = document.getElementById('callButton');
//var hangupButton = document.getElementById('hangupButton');
//var localVideo = document.getElementById('video_call');
//var remoteVideo = document.getElementById('kjk');
//
//
//callButton.disabled = true;
//hangupButton.disabled = true;
//startButton.onclick = start;
//callButton.onclick = call;
//hangupButton.onclick = hangup;
//
//
//
//// logging utility
//function trace(arg) {
//    var now = (window.performance.now() / 1000).toFixed(3);
//}
//
//function getName(pc) {
//    return (pc === pc1) ? 'pc1' : 'pc2';
//}
//
//function getOtherPc(pc) {
//    return (pc === pc1) ? pc2 : pc1;
//}
//
//
//function start() {
//    trace();
//    startButton.disabled = true;
//    navigator.mediaDevices.getUserMedia({
//        audio: true,
//        video: true
//    }).then(gotStream).catch(function (e) {
//        alert('getUserMedia() error: ' + e.name);
//    });
//}
//
//function gotStream(stream) {
//    trace();
//    localVideo.srcObject = stream;
//    localStream = stream;
//    callButton.disabled = false;
//}
//
//localVideo.addEventListener('loadedmetadata', function () {
//    trace();
//});
//
//function call() {
//    callButton.disabled = true;
//    hangupButton.disabled = false;
//    trace();
//    startTime = window.performance.now();
//    var videoTracks = localStream.getVideoTracks();
//    var audioTracks = localStream.getAudioTracks();
//    if (videoTracks.length > 0) {
//        trace();
//    }
//    if (audioTracks.length > 0) {
//        trace();
//    }
//    var servers = null;
//
//    pc1 = new RTCPeerConnection(servers);
//    trace();
//    pc2 = new RTCPeerConnection(servers);
//    trace();
//
//    pc1.onicecandidate = function (e) {
//        onIceCandidate(pc1, e);
//    };
//    pc2.onicecandidate = function (e) {
//        onIceCandidate(pc2, e);
//    };
//
//    pc1.oniceconnectionstatechange = function (e) {
//        onIceStateChange(pc1, e);
//    };
//    pc2.oniceconnectionstatechange = function (e) {
//        onIceStateChange(pc2, e);
//    };
//
//    pc1.addStream(localStream);
//    trace();
//
//    pc2.onaddstream = gotRemoteStream;
//    trace();
//
//    pc1.createOffer(
//            offerOptions
//            ).then(
//            onCreateOfferSuccess,
//            onCreateSessionDescriptionError
//            );
//}
//
//function onIceCandidate(pc, event) {
//    getOtherPc(pc).addIceCandidate(event.candidate)
//            .then(function () {
//                trace();
//            },
//                    function (err) {
//                        trace();
//                    }
//            );
//    trace();
//}
//
//function hangup() {
//    trace();
//    pc1.close();
//    pc2.close();
//    pc1 = null;
//    pc2 = null;
//    hangupButton.disabled = true;
//    callButton.disabled = false;
//}
//
//remoteVideo.addEventListener('loadedmetadata', function () {
//    trace();
//});
//
//remoteVideo.onresize = function () {
//    trace();
//    if (startTime) {
//        var elapsedTime = window.performance.now() - startTime;
//        trace();
//        startTime = null;
//    }
//};
//
//function onCreateOfferSuccess(desc) {
//    trace();
//    trace();
//    pc1.setLocalDescription(desc).then(
//            function () {
//                trace();
//            },
//            );
//    trace();
//    pc2.setRemoteDescription(desc).then(
//            function () {
//                trace();
//            },
//            );
//    trace();
//    pc2.createAnswer().then(
//            onCreateAnswerSuccess,
//            onCreateSessionDescriptionError
//            );
//}
//
//function onCreateSessionDescriptionError(error) {
//    trace();
//}
//
//function onSetRemoteSuccess(pc) {
//    trace();
//}
//
//function gotRemoteStream(e) {
//    remoteVideo.srcObject = e.stream;
//    trace();
//}
//
//function onCreateAnswerSuccess(desc) {
//    trace();
//    trace();
//    pc2.setLocalDescription(desc).then(
//            function () {
//                trace();
//            },
//            );
//    trace();
//    pc1.setRemoteDescription(desc).then(
//            function () {
//                trace();
//            },
//            );
//}




//function sa() {
////    var rr = localStream.getVideoTracks();
//    $.ajax({
//        url: 'callme',
//        type: 'POST',
//        data: {lidst: localStream},
//        contentType: 'application/json; charset=utf-8',
//        success: function (response) {
//           remoteVideo.srcObject=response;
//            trace();
//        },
//        error: function () {
////            alert("error");
//        }
//    });
//}
//
//setInterval("sa()", 100);




//var video = $("#video_call").get()[0];
//var canvas = $("#kjk");
//var ctx = canvas.get()[0].getContext('2d');
//var localStream;
//
//navigator.mediaDevices.getUserMedia({
//    audio: true,
//    video: true
//}).then(gotStream).catch(function (e) {
//    alert('getUserMedia() error: ' + e.name);
//});
//function gotStream(stream) {
//    video.srcObject = stream;
//    localStream = stream;
//}
//
//
//function mainFunc() {
//    ctx.drawImage(video, 0, 0, 300, 150);
//     $.ajax({
//        url: 'callme',
//        type: 'POST',
//        data: {data: localStream}, //your string data
//        dataType: 'json',
//        success: function (response) {
//            alert(response);
//        },
//        error: function () {
//        }
//    });
//}
//setInterval("mainFunc()", 500);
//




//function mainFunc2() {
//   
////    $.getJSON("getCall", function (response) {
////        alert(response);
////        ctx.drawImage(response, 0, 0, 300, 150);
////    });
//}
//setInterval("mainFunc2()", 600);



