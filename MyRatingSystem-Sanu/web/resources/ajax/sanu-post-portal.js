/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//getting all the post
function getAllPost22() {
    $.getJSON("allupost", function (response) {
        var abs = response;
        $("#newP").empty();
        for (var i in abs) {
            var array = abs[i];
            var image = array.image;
            var fname = array.firstName;
            var lname = array.lastName;
            var cf = array.cf;
            var possi = array.possition;
            var postdetail = array.details;
            var like = array.likes;
            var id = array.ppid;
            var dd = array.date;
            var html = '<div class="wed">\n\
                <div class="panel panel-default">\n\
                 <div class="btn-group pull-right postbtn">\n\
                     <button type="button" class="dotbtn dropdown-toggle" data-toggle="dropdown" aria-expanded="false" data-target="#men"> <span class="dots"></span> </button>\n\
                     <ul id="men" class="dropdown-menu pull-right" role="menu">\n\
                         <li><a href="">Hide this</a></li>\n\
                         <li><a href="">Report</a></li>\n\
                     </ul>\n\
                 </div>\n\
                 <div class="col-md-12">\n\
                     <div class="media">\n\
                         <div class="media-left"> <a> <img src="resources/profile/' + cf + '" alt="" style="max-width: 53px;" class="media-object"> </a> </div>\n\
                         <div class="media-body">\n\
                             <u><b><h4 class="media-heading" style="font-family: Encode Sans, sans-serif;color:black"> ' + fname + ' ' + lname + '</b></u><br>\n\
                                <small><i class="fa fa-clock-o"></i> ' + dd + '</small> </h4>\n\
                             <p style="font-family: Titillium Web, sans-serif;">' + postdetail + '. </p>\n\
                                 \n\
                                  \n\
                         </div>\n\
                         <img src="resources/wallpics/' + image + '" class="img-responsive"/>\n\
                         <ul class="nav nav-pills pull-left" style="margin-top:9px">\n\
                              <button id="' + id + '" class="btn  btnr  btn-sm btn-responsive likee"><span class="glyphicon glyphicon-thumbs-up"></span>Like</button>\n\
                              <button class="btn  btnr  btn-sm btn-responsive ccvvy" id="' + id + '" data-toggle="collapse" data-target="#s' + id + '"><span class="glyphicon glyphicon-option-horizontal">😀Comment</span></button>\n\
                              <button class="btn btnr  btn-sm btn-responsive like-bb"><span class="glyphicon glyphicon-share-alt">Share</span></button>\n\
                         </ul>\n\
                        <div class="btn-group pull-right" style="margin-top:15px">\n\
                          <span style="border:1px solid rgba(99, 99, 99, 0.99);padding:6px;border-radius:10px" class="">Likes <span class="" id="" style="background-color:#0e0e0e99;padding:2px 5px 2px 5px;border-radius:5px;color:white">' + like + '</span></span>\n\
                          <span style="border:1px solid rgba(99, 99, 99, 0.99);padding:6px;border-radius:10px" class="">Comments <span class="" id="" style="background-color:#0e0e0e99;padding:2px 5px 2px 5px;border-radius:5px;color:white">' + like + '</span></span>\n\
                        </div>\n\
                     </div>\n\
                 </div>\n\
                 <div class="col-md-12 border-top collapse" id="s' + id + '">\n\
                     <div class="status-upload">\n\
                         <form id="sdt' + id + '" class="formee">\n\
                             <label style="font-family: Titillium Web, sans-serif;"></label>\n\
                              <div class="row">\n\
                                  <div class="col-md-1">\n\
                                    <img src="resources/profile/pavatar.png" alt="" style="max-width: 35px;" class="media-object"></div>\n\
                                 <div class="col-md-11">\n\
                                 <textarea id="' + id + '" name="commnet" class="form-control commee" placeholder="Comment here" rows="1" style="border-radius: 100px;height: 35px;resize:none"></textarea>\n\
                                 <input name="postId" style="display:none" value="' + id + '"></input>\n\
                             </div>\n\
                             </div>\n\
                         </form>\n\
                     </div>\n\
                     <!-- Status Upload  --> \n\
                     <div class="col-md-12 commentsblock border-top" id="ccoo' + id + '" style="max-height: 190px;overflow-x: auto;">\n\
                     </div>\n\
                 </div>\n\
             </div>\n\
            </div>';
            $("#newP").prepend(html);
        }

        $(".likee").click(function () {
            $('#chatty')[0].play();
            $.getJSON("likeMe?likeP=" + this.id + "&des='like'", function () {
                alertify.log("You liked on this post : ✔️");
            });
        });

        $(".ccvvy").click(function () {
            getCommen(this.id);
        });
//        
        $(".commee").keypress(function (e) {
            $('#clike')[0].play();
            var form = $("#sdt" + this.id).serialize();
            if (e.which == 13) {
                $('#chatty')[0].play();
                $.post("comMe", form, function (response) {
                    alertify.log("You Commented on this post : ✔️");
                });
                $(".commee").val("");
                getCommen(this.id);
            }

        });

        function getCommen(dd) {
            $.getJSON("getpostcommen?id=" + dd + "", function (response) {
                var res = response;
                $("#ccoo" + dd).empty();
                for (var i in res) {
                    var array = res[i];
                    var ht = '<div class="media">\n\
                                <div class="media-left"> <a href="javascript:void(0)"> <img alt="64x64" src="resources/profile/pavatar.png" class="media-object"> </a> </div>\n\
                                <div class="media-body">\n\
                                    <h4 class="media-heading">MyRatings</h4>\n\
                                    <p>' + array.comment + '.</p>\n\
                                </div>\n\
                            </div>';
                    $("#ccoo" + dd).append(ht);
                }
            });
        }

    });
}
setInterval("getAllPost22()", 400000);
getAllPost22();
getAllPost22();