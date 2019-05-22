/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//load usrs company
$("#jcan").click(function () {
    $("#coNamej").empty();
    $.getJSON("getAllCpy", function (response) {
        var array = response;
        for (var i in array) {
            var item = array[i];
            var compName = item.comName;
            var comid = item.id;
            $("#coNamej").append("<option>" + comid + " : " + compName + "</option>");
        }
    });
});

loadProfileDe();
//load all user profile details;
function loadProfileDe() {
    $.getJSON("getAllUsersDe1", function (response) {
        $("#sum1p").empty();
        $("#sum1p").append(response.summery1);
        $("#sum2p").empty();
        $("#sum2p").append(response.summery2);
        $("#reaserp").empty();
        $("#reaserp").append(response.researchInterests);
        var priorEx = response.priorExperiences;
        var array = priorEx.split("/");
        $("#pexfu").empty();
        for (var i in array) {
            var unit = array[i];
            gelp(unit);
        }

        function gelp(unit) {
            var tem = unit;
            var res = tem.split(",");
            if (res[0] !== "" && res[1] !== "") {
                var edited = "<a class='list-group-item inactive-link'>\n\
                       <h4 class='list-group-item-heading' id='pexh'>\n\
                       " + res[0] + "</h4>\n\
                       <p class='list-group-item-text' id='pexp'>\n\
                       " + res[1] + "</p>\n\
                       </a>";
                $("#pexfu").append(edited);
            }
        }





        var keyExA = response.keyExpertise.split("/");
        $("#kexul").empty();
        for (var i in keyExA) {
            var keyEx = keyExA[i];
            if (keyEx !== '') {
                $("#kexul").append("<li class='list-group-item'>" + keyEx + "</li>");
            }
        }


        $("#edu_b").empty();
        var eduEdi = response.degree_Year.split("/");
        for (var i in eduEdi) {
            var arrayE = eduEdi[i];
            fixT(arrayE);
        }

        function fixT(arrayE) {
            var ear = arrayE.split(",");
            if (ear[0] !== '' && ear[1] !== '') {
                $("#edu_table").append("<tr><td>" + ear[0] + "</td><td>" + ear[1] + "</td></tr>");
            }
        }



        $("#ps1").empty();
        var proA = response.project.split("/");
        for (var i in proA) {
            var rr = proA[i];
            provb(rr);
        }

        function provb(rr) {
            var cmod = rr.split(",");
            if (cmod[0] !== "" && cmod[1] !== "") {
                var ht = "<li>" + cmod[0] + "</li><ul class='list-unstyled'>\n\
                      <li>" + cmod[1] + "</li></ul>";
                $("#ps1").append(ht);
            }
        }

        $("#ps2").empty();
        var couArray = response.course.split("/");
        for (var i in couArray) {
            var ms = couArray[i];
            couvb(ms);
        }

        function couvb(ms) {
            var cod = ms.split(",");
            if (cod[0] !== "" && cod[1] !== "") {
                var ht = "<li>" + cod[0] + "</li><ul class='list-unstyled'>\n\
                      <li>" + cod[1] + "</li></ul>";
                $("#ps2").append(ht);
            }

        }

        $("#ps3").empty();
        var lanA = response.languages.split("/");
        for (var i in lanA) {
            var lan = lanA[i];
            if (lan !== '') {
                $("#ps3").append("<li>" + lan + "</li>");
            }

        }


        $("#ps4").empty();
        var certA = response.certification.split("/");
        for (var i in certA) {
            var jh = certA[i];
            certn(jh);
        }

        function certn(jh) {
            var carra = jh.split(",");
            if (carra[0] !== '' && carra[1] !== '') {
                var ht = "<li>" + carra[0] + "</li><ul class='list-unstyled'>\n\
                      <li>" + carra[1] + "</li></ul>";
                $("#ps4").append(ht);
            }
        }



        $.getJSON("getAllSkill", function (response) {
            $("#skee").empty();
            var rsdd = response;
            for (var i in rsdd) {
                var onear = rsdd[i];
                //load skills for user
                var htmls = "<div class='progress'>\n\
                            <div data-placement='top' style='width: " + onear.skillrate + "%'\n\
                            aria-valuemax='100' aria-valuemin='0' aria-valuenow='" + onear.skillrate + "' role='progressbar' class='progress-bar " + onear.bclas + "'>\n\
                            <span class='sr-only'>" + onear.skillrate + "%</span>\n\
                            <span class='progress-type'>" + onear.skillName + "</span>\n\
                            <input name='usid' value='" + onear.id + "' style='display:none'>\n\
                            </div>\n\
                            </div>";
                $("#skee").append(htmls);
            }
        });
    });
}

setInterval("loadProfileDe()", 20000);



//
abcdd();
//get all ratings
function abcdd() {
    $.getJSON("getAllRating2", function (response) {
        var jsona = response;
        var v5 = response.fiveStra;
        var v4 = response.fourStar;
        var v3 = response.threeStar;
        var v2 = response.twoStar;
        var v1 = response.oneStar;
        var rc = response.rcount;

        var total = v5 + v4 + v3 + v2 + v1;
        var tres = total / rc;
        var trtr = tres.toFixed(2);
        $('#rti').empty();
        $('#rti').append(trtr);


        $("#divrate").empty();
        var htmle = "<div class='pull-left'>\n\
                <div class='pull-left' style='width:35px; line-height:1;'>\n\
                <div style='height:9px;margin:5px 0;'> 5 <span class='glyphicon glyphicon-star'></span></div>\n\
                </div>\n\
                <div class='pull-left' style ='width:180px;'>\n\
                <div class='progress' style='height:9px; margin:8px 0;'>\n\
                <div class='progress-bar progress-bar-success' role='progressbar' aria-valuenow='" + response.fiveStra + "' aria-valuemin='0' aria-valuemax='5' style='width:100%'>\n\
                <span class='sr-only'> 80% Complete(danger) </span>\n\
                </div>\n\
                </div>\n\
                </div>\n\
                <div class='pull-right' style='margin-left:10px;'> " + response.fiveStra + " </div>\n\
              </div>\n\
              <div class='pull-left'>\n\
                <div class='pull-left' style='width:35px; line-height:1;'>\n\
                <div style='height:9px; margin:5px 0;'> 4 <span class='glyphicon glyphicon-star'> </span></div>\n\
                </div>\n\
                <div class='pull-left' style='width:180px;'>\n\
                <div class='progress' style='height:9px; margin:8px 0;'>\n\
                <div class='progress-bar progress-bar-primary' role='progressbar' aria-valuenow='" + response.fourStar + "' aria-valuemin='0' aria-valuemax='5' style='width: 80%'>\n\
                <span class='sr-only'> 80% Complete(danger) </span>\n\
                </div>\n\
                </div>\n\
                </div>\n\
                <div class='pull-right' style='margin-left:10px;'> " + response.fourStar + " </div>\n\
             </div>\n\
             <div class='pull-left'>\n\
                <div class='pull-left' style='width:35px; line-height:1;'>\n\
                <div style='height:9px; margin:5px 0;'> 3 <span class ='glyphicon glyphicon-star'> </span></div>\n\
                </div>\n\
                <div class='pull-left' style='width:180px;'>\n\
                <div class='progress' style='height:9px; margin:8px 0;'>\n\
                <div class='progress-bar progress-bar-info' role ='progressbar' aria-valuenow='" + response.threeStar + "' aria-valuemin='0' aria-valuemax='5' style='width: 60%'>\n\
                <span class='sr-only'> 80% Complete(danger) </span>\n\
                </div>\n\
                </div>\n\
                </div>\n\
                <div class='pull-right' style='margin-left:10px;'> " + response.threeStar + " </div>\n\
             </div>\n\
             <div class='pull-left'>\n\
                <div class='pull-left' style='width:35px; line-height:1;'>\n\
                <div style='height:9px; margin:5px 0;'> 2 <span class='glyphicon glyphicon-star'> </span></div>\n\
                </div>\n\
                <div class='pull-left' style='width:180px;'>\n\
                <div class='progress' style='height:9px; margin:8px 0;'>\n\
                <div class='progress-bar progress-bar-warning' role ='progressbar' aria-valuenow='" + response.twoStar + "' aria-valuemin='0' aria-valuemax='5' style='width: 40%'>\n\
                <span class='sr-only'> 80% Complete(danger)</span>\n\
                </div>\n\
                </div>\n\
                </div>\n\
                <div class='pull-right' style='margin-left:10px;'> " + response.twoStar + " </div>\n\
            </div>\n\
            <div class='pull-left'>\n\
                <div class='pull-left' style='width:35px;line-height:1;'>\n\
                <div style='height:9px; margin:5px 0;'> 1 <span class='glyphicon glyphicon-star'></span></div>\n\
                </div>\n\
                <div class='pull-left' style='width:180px;'>\n\
                <div class='progress' style='height:9px; margin:8px 0;'>\n\
                <div class='progress-bar progress-bar-danger' role ='progressbar' aria-valuenow='" + response.oneStar + "' aria-valuemin='0' aria-valuemax='5' style='width:20%'>\n\
                <span class='sr-only'> 80% Complete(danger)</span>\n\
                </div>\n\
                </div>\n\
                </div>\n\
                <div class='pull-right' style='margin-left:10px;'> " + response.oneStar + " </div>\n\
              </div>";
        $("#divrate").append(htmle);
    });
}
setInterval("abcdd()", 20000);




$(".rat1").click(function () {

    var id = this.id;
    if (arraysd[0] == id) {
        $(".rat1").removeClass("btn-default");
        $("#" + id).addClass("btn-warning");
    } else if (arraysd[1] == id) {
        $(".rat1").removeClass("btn-default");
        $("#" + arraysd[0]).addClass("btn-warning");
        $("#" + id).addClass("btn-warning");
    } else if (arraysd[2] == id) {
        $(".rat1").removeClass("btn-default");
        $("#" + arraysd[0]).addClass("btn-warning");
        $("#" + arraysd[1]).addClass("btn-warning");
        $("#" + id).addClass("btn-warning");
    } else if (arraysd[3] == id) {
        $(".rat1").removeClass("btn-default");
        $("#" + arraysd[0]).addClass("btn-warning");
        $("#" + arraysd[1]).addClass("btn-warning");
        $("#" + arraysd[2]).addClass("btn-warning");
        $("#" + id).addClass("btn-warning");
    } else if (arraysd[4] == id) {
        $(".rat1").removeClass("btn-default");
        $("#" + arraysd[0]).addClass("btn-warning");
        $("#" + arraysd[1]).addClass("btn-warning");
        $("#" + arraysd[2]).addClass("btn-warning");
        $("#" + arraysd[3]).addClass("btn-warning");
        $("#" + id).addClass("btn-warning");
        $(".rat1").attr("disabled", true);
    }

    $(this).addClass("btn-warning");
    $.getJSON("addRags2?id=" + id + "", function (response) {
//        alert(response);
    });
    abcdd();
});