/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function loadAlfg() {

    $.getJSON("getAllFriend", function (response) {
        var array = response;
        for (var i in array) {
            var temp = array[i];
            console.log(temp.firstName);

        }

    });
    var htm = "<div class='col-md-6'>\n\
               <div class='blockquote-box clearfix'>\n\
                   <div class='square pull-left'>\n\
                       <img src='http://placehold.it/60/8e44ad/FFF&text=B' alt='' class='' />\n\
                   </div>\n\
                   <h4>\n\
                       Bootsnipp</h4>\n\
                   <p>\n\
                       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a\n\
                       ante.\n\
                   </p>\n\
               </div>\n\
               <div class='blockquote-box blockquote-primary clearfix'>\n\
                   <div class='square pull-left'>\n\
                       <span class='glyphicon glyphicon-music glyphicon-lg'></span>\n\
                   </div>\n\
                   <h4>\n\
                       Let's music play</h4>\n\
                   <p>\n\
                       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a\n\
                       ante. <a href='http://www.jquery2dotnet.com/search/label/jquery'>jquery2dotnet</a>\n\
                   </p>\n\
               </div>\n\
               <div class='blockquote-box blockquote-success clearfix'>\n\
                   <div class='square pull-left'>\n\
                       <span class='glyphicon glyphicon-tree-conifer glyphicon-lg'></span>\n\
                   </div>\n\
                   <h4>\n\
                       Tree conifer</h4>\n\
                   <p>\n\
                       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a\n\
                       ante.\n\
                   </p>\n\
               </div>\n\
           </div>";
}


setInterval("loadAlfg()", 2000);

$('#comskees').keydown(function () {
    $('#jvfk').fadeIn(100);
    var skill = $('#comskees').val().trim();
    $.getJSON("skcadvac?skillcomp=" + skill + "", function (response) {
        var array = response;
        $('#jvfk').empty();
        for (var i in array) {
            var onee = array[i];
            var html = "<li class='fcx'>" + onee.skillName + "</li>";
            $('#jvfk').append(html);
        }

        $('.fcx').click(function () {
            var yrr = $(this).text().trim();
            $('#comskees').val(yrr);
            $('#jvfk').fadeOut(100);
            var sss = "<span class='tags'>" + yrr + "</span>";
            $('#cvx').append(sss);
            $('#comskees').val("");
        });
    });
});



loadFriee2();
function loadFriee2() {
    $.getJSON("getMyFriend", function (response) {
        $("#frn").empty();
        for (var i in response) {
            var ixm = response[i];
            var html = "<figure class='snip1578' style='min-width: 210px;max-width: 200px;'>\n\
                <img src='resources/profile/" + ixm.cf + "'/>\n\
                <figcaption>\n\
                    <h3>" + ixm.firstName + "</h3>\n\
                    <div class='icons'><a href='#'><i class='ion-social-twitter'></i></a>\n\
                        <a id='" + ixm.id + "' class='mb'> <i class='fa fa-user-md'></i></a>\n\
                        <a href='message?id='1'" + ixm.id + "'> <i class='fa fa-wechat'></i></a>\n\
                    </div>\n\
                </figcaption>\n\
            </figure>";

            $("#frn").append(html);
        }
        $('.mb').click(function () {
//            alert(this.id);
            $.getJSON("addFriend?id=" + this.id + "", function (response) {
                alertify.alert("You Followed Him..!");
            });
        });
    });
}

setInterval("loadFriee2()", 20000);


$('#wplace').keydown(function () {
    if ($('#wplace').val() === "") {
        $('#sl2').slideUp(100);
        $('#wplace').val("");
    } else {
        $('#sl2').slideDown(100);
        $('#sl2').empty();
        var tt = $('#wplace').val();
        $.getJSON("searchCpy?cname=" + tt + "", function (resp) {
            var ii = resp;
            for (var i in ii) {
                var arr = ii[i];
                var ht = "<li class='sz'>" + arr.comName + "</li>";
                $('#sl2').append(ht);
            }
            $('.sz').click(function () {
                var frt = $(this).text().trim();
                $('#wplace').val(frt);
//                 $('#kij').empty();
                $('#sl2').slideUp(100);
            });
        });

    }
});

//$('#cpopo').click(function () {
//    var form = new FormData($("#pppform")[0]);
//    $.ajax({
//        url: "changepp",
//        method: "POST",
//        dataType: 'json',
//        data: form,
//        processData: false,
//        contentType: false,
//        success: function (result) {
//           alertify.log("You changed your Profile pic..!");
//        },
//        error: function (er) {
//
//        }
//    });
//});
