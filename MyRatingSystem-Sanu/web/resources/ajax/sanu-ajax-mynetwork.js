/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//friends loading
loadFriee();
function loadFriee() {
    $.getJSON("getAllUser", function (response) {
        $("#frndCir").empty();
        for (var i in response) {
            var ixm = response[i];
            var html = "<figure class='snip1578'>\n\
                <img src='resources/profile/" + ixm.cf + "'/>\n\
                <figcaption>\n\
                    <h3>" + ixm.firstName + "</h3>\n\
                    <div class='icons'><a href='#'><i class='ion-social-twitter'></i></a>\n\
                        <a id='" + ixm.id + "' class='mb'> <i class='fa fa-user-md'></i></a>\n\
                        <a href='message?id='1'" + ixm.id + "'> <i class='fa fa-wechat'></i></a>\n\
                    </div>\n\
                </figcaption>\n\
            </figure>";

            $("#frndCir").append(html);
        }
        $('.mb').click(function () {
//            alert(this.id);
            $.getJSON("addFriend?id=" + this.id + "", function (response) {
                alertify.alert("You Follwed Him..!");
            });
        });
    });
}

setInterval("loadFriee()", 20000);



///notifications
//$("#nott")

"<li><h5><i class='fa fa-users coral'></i> Roselynn Smith followed you.</h5></li>";
//$("#nottmes")                                                               
 "<li><h4>From Roselyn Smith <small class='coral'><strong>NEW</strong> <i class='fa fa-clock-o'></i> 7:42 A.M.</small></h4></li>\n\
<li><button type='button' class='btn btn-labeled btn-danger' href='#'><span class='btn-label'><i class='fa fa-envelope-o'></i></span>View All Messages</button></li>";