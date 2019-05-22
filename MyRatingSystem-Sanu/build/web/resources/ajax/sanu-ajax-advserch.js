/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//alert('s');
//window.top.close();
//$('#jskilles') --> skills set main tag
//$('#jlooc') --> location set main tag
//$('#jexp') --> jexp set main tag
//$('#jpoos') --> jposition set main tag
//$('#abcf') --> abcf set main tag

//"<div class='col-md-3'>\n\
//<div class='view'>\n\
//    <div class='caption'>\n\
//        <p>47LabsDesign</p>\n\
//        <a href='' rel='tooltip' title='Appreciate'><span class='fa fa-heart-o fa-2x'></span></a>\n\
//        <a href='' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
//    </div>\n\
//    <img src='http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg' class='img-responsive'>\n\
//</div>\n\
//<div class='info'>\n\
//    <p class='small' style='text-overflow: ellipsis'>An Awesome Title</p>\n\
//    <p class='small coral text-right'><i class='fa fa-clock-o'></i> Posted Today | 10:42 A.M.</small>\n\
//</div>\n\
//<div class='stats turqbg'>\n\
//    <span class='fa fa-heart-o'> <strong>47</strong></span>\n\
//    <span class='fa fa-eye pull-right'> <strong>137</strong></span>\n\
//</div>\n\
//</div>";
//$('#seoju');

$(window).load(function () {
    var tes = $('#mseleci').find(":selected").text();
    if (tes === "Search jobs from a selected company") {
        $("#abcf").slideDown(500);
        $('#jpoos').slideUp(500);
        $('#jlooc').slideUp(500);
    }
});

$('#mseleci').change(function () {
    var tes = $(this).find(":selected").text();
    if (tes === "Search jobs from a selected company") {
        $("#abcf").slideDown(500);
        $('#jpoos').slideUp(500);
        $('#jlooc').slideUp(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    } else if (tes === "Search employees from a selected company") {
        $("#abcf").slideDown(500);
        $('#jpoos').slideUp(500);
        $('#jlooc').slideUp(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    } else if (tes === "Search job for selected skills") {
        $("#abcf").slideUp(500);
        $('#jpoos').slideDown(500);
        $('#jlooc').slideUp(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    } else if (tes === "Search employees for selected skills") {
        $("#abcf").slideUp(500);
        $('#jpoos').slideDown(500);
        $('#jlooc').slideUp(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    } else if (tes === "Search employees near to your location") {
        $("#abcf").slideUp(500);
        $('#jpoos').slideDown(500);
        $('#jlooc').slideDown(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    } else if (tes === "Search jobs near to your location") {
        $("#abcf").slideUp(500);
        $('#jpoos').slideDown(500);
        $('#jlooc').slideDown(500);
        $('#kij').empty();
        $('#seoju').empty();
        $('#sbf').val("");
    }
});



$('#sbf').keydown(function () {
    if ($('#sbf').val() === "") {
        $('#cpsele').slideUp(100);
        $('#sbf').val("");
    } else {
        $('#cpsele').empty();
        var tt = $('#sbf').val();
        $.getJSON("searchCpy?cname=" + tt + "", function (resp) {
            var ii = resp;
            for (var i in ii) {
                var arr = ii[i];
                var ht = "<li class='sz'>" + arr.comName + "</li>";
                $('#cpsele').append(ht);
            }
            $('.sz').click(function () {
                var frt = $(this).text().trim();
                $('#sbf').val(frt);
                $('#kij').empty();
//                 alert("ss");
                $.getJSON("searchCpyski?cname=" + frt + "", function (response) {
                    var res = response;
                    for (var i in res) {
                        var te = res[i];
                        var skill = "<div class='col-sm-4'>\n\
                                <div class='form-group row'>\n\
                                    <div class='col-sm-12'>\n\
                                        <input type='checkbox' class='abc'  name='' id='" + te.id + "'  value='" + te.skillName + "'/>\n\
                                        <div class='btn-group'>\n\
                                            <label for='' class='btn btn-danger amd'>\n\
                                                <span class='content'>" + te.skillName + "</span>\n\
                                            </label>\n\
                                        </div>\n\
                                    </div>\n\
                                </div>\n\
                                </div>";
                        $('#kij').append(skill);
                    }
                });
            });
        });
        $('#cpsele').slideDown(100);
    }
});

$('#lilo').click(function () {
    $('#cpsele').slideUp(100);
//    $('#sbf').val("");
});



$('#ssbttn').click(function () {
    var tes = $('#mseleci').find(":selected").text();
    if (tes === "Search jobs from a selected company") {
        $('#seoju').empty();
        var tee = "";
        if ($('.abc').prop("checked") === true) {

            $('.abc').each(function () {
                if ($(this).prop("checked") === true) {
                    if (tee === "") {
                        tee = this.value + ",";

                    } else {
                        tee = tee + this.value + ",";
                    }
                }
            });
//            alert(tee);
            alertify.log("Searcching..!");
            var form = {qq: tee, qq2: $('#sbf').val().trim()};
            $.post("skillser1", form, function (resp) {
                var respp = resp;
                for (var i in respp) {
                    var arr = respp[i];
                    var hht = "<div class='col-md-3'>\n\
                                            <div class='view'>\n\
                                                <div class='caption'>\n\
                                                    <p>Apply Today</p>\n\
                                                    <a class='abdf' id='" + arr.jid + "' rel='tooltip' title='Appreciate'><span class='fa fa-search fa-2x'></span></a>\n\
                                                </div>\n\
                                                <img src='resources/wallpics/job/" + arr.jobBanner + "' class='img-responsive'>\n\
                                            </div>\n\
                                            <div class='info'>\n\
                                                <p class='small' style='text-overflow: ellipsis'>" + arr.title + "</p>\n\
                                                <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + arr.pdate + ".</small>\n\
                                            </div>\n\
                                            <div class='stats turqbg'>\n\
                                                <span class='fa fa-heart-o'> <strong>0</strong></span>\n\
                                                <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                                            </div>\n\
                                        </div>";
                    $('#seoju').append(hht);

                }
                $('#erso')[0].play();

                $("[rel='tooltip']").tooltip();

                $('.view').hover(
                        function () {
                            $(this).find('.caption').slideDown(250); //.fadeIn(250)
                        },
                        function () {
                            $(this).find('.caption').slideUp(250); //.fadeOut(205)
                        }
                );

                $(".abdf").click(function () {
                    window.open('jbview?id=' + this.id + '', '_blank');
                });

            });
        } else {
            $.getJSON("searchCpyaJ?cname=" + $('#sbf').val() + "", function (response) {
                var re = response;
                $('#seoju').empty();
                for (var i in re) {
                    var arr = re[i];
                    var hht = "<div class='col-md-3'>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + arr.jid + "' rel='tooltip' title='Appreciate'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + arr.jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + arr.title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + arr.pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>";
                    $('#seoju').append(hht);
                }
                $("[rel='tooltip']").tooltip();

                $('.view').hover(
                        function () {
                            $(this).find('.caption').slideDown(250); //.fadeIn(250)
                        },
                        function () {
                            $(this).find('.caption').slideUp(250); //.fadeOut(205)
                        }
                );

                $(".abdf").click(function () {
                    window.open('jbview?id=' + this.id + '', '_blank');
                });

            });
        }
    } else if (tes === "Search employees from a selected company") {
        alertify.log("Searcching..!");
        $('#seoju').empty();
        var tee = "";
        $('.abc').each(function () {
            if ($(this).prop("checked") === true) {
                if (tee === "") {
                    tee = this.value + ",";

                } else {
                    tee = tee + this.value + ",";
                }
            }
        });
        var form = {qq: tee, qq2: $('#sbf').val().trim()};
        $.post("sfsktter", form, function (resp) {
            var respp = resp;
            for (var i in respp) {
                var arr = respp[i];
                var hht = "<figure class='snip1578' style='min-width: 210px;max-width: 200px;'>\n\
                                            <img src='resources/profile/" + arr.cf + "'/>\n\
                                            <figcaption>\n\
                                                <h3><a class='' href='search?id=" + arr.id + "' target='blank'>" + arr.firstName + "</a></h3>\n\
                                                <div class='icons'><a href='#'><i class='ion-social-twitter'></i></a>\n\
                                                    <a id='" + arr.id + "' class='mb'> <i class='fa fa-user-md'></i></a>\n\
                                                    <a href='message?id='1'" + arr.id + "'> <i class='fa fa-wechat'></i></a>\n\
                                                </div>\n\
                                            </figcaption>\n\
                                        </figure>";
                $('#seoju').append(hht);
            }
            $('#erso')[0].play();
        });
    } else if (tes === "Search job for selected skills") {
        $('#seoju').empty();
        var tee = "";
        alertify.log("Searcching..!");
        $('.abc').each(function () {
            if ($(this).prop("checked") === true) {
                if (tee == "") {
                    tee = this.value + ",";
                } else {
                    tee = tee + this.value + ",";
                }
            }
        });
        var form = {qq: tee};
        $.post("sfsk", form, function (resp) {
            var respp = resp;
            for (var i in respp) {
                var arr = respp[i];
                var hht = "<div class='col-md-3'>\n\
                                            <div class='view'>\n\
                                                <div class='caption'>\n\
                                                    <p>Apply Today</p>\n\
                                                    <a class='abdf' id='" + arr.jid + "' rel='tooltip' title='Appreciate'><span class='fa fa-search fa-2x'></span></a>\n\
                                                </div>\n\
                                                <img src='resources/wallpics/job/" + arr.jobBanner + "' class='img-responsive'>\n\
                                            </div>\n\
                                            <div class='info'>\n\
                                                <p class='small' style='text-overflow: ellipsis'>" + arr.title + "</p>\n\
                                                <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + arr.pdate + ".</small>\n\
                                            </div>\n\
                                            <div class='stats turqbg'>\n\
                                                <span class='fa fa-heart-o'> <strong>0</strong></span>\n\
                                                <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                                            </div>\n\
                                        </div>";
                $('#seoju').append(hht);
            }
            $('#erso')[0].play();

            $("[rel='tooltip']").tooltip();

            $('.view').hover(
                    function () {
                        $(this).find('.caption').slideDown(250); //.fadeIn(250)
                    },
                    function () {
                        $(this).find('.caption').slideUp(250); //.fadeOut(205)
                    }
            );

            $(".abdf").click(function () {
                window.open('jbview?id=' + this.id + '', '_blank');
            });

        });

    } else if (tes === "Search employees for selected skills") {
        $('#seoju').empty();
        var tee = '';
        $('.abc').each(function () {
            if ($(this).prop("checked") === true) {
                if (tee === '') {
                    tee = this.value;
                } else {
                    tee = tee + "," + this.value;
                }
            }
        });
        var form = {qq: tee};
        $.post("sfsktt", form, function (resp) {
            var respp = resp;
            for (var i in respp) {
                var arr = respp[i];
                var hht = "<figure class='snip1578' style='min-width: 210px;max-width: 200px;'>\n\
                                            <img src='resources/profile/" + arr.cf + "'/>\n\
                                            <figcaption>\n\
                                                <h3><a class='' href='search?id=" + arr.id + "' target='blank'>" + arr.firstName + "</a></h3>\n\
                                                <div class='icons'><a href='#'><i class='ion-social-twitter'></i></a>\n\
                                                    <a id='" + arr.id + "' class='mb'> <i class='fa fa-user-md'></i></a>\n\
                                                    <a href='message?id='1'" + arr.id + "'> <i class='fa fa-wechat'></i></a>\n\
                                                </div>\n\
                                            </figcaption>\n\
                                        </figure>";
                $('#seoju').append(hht);
            }
            $('#erso')[0].play();
            alertify.log("Searcching..!");
        });
    } else if (tes === "Search employees near to your location") {
        $('#seoju').empty();
        alertify.log("This future is not available right now...!");
        $('#erso')[0].play();
//                alertify.log("Searcching..!");
//        alert('');
    } else if (tes === "Search jobs near to your location") {
        $('#seoju').empty();
        $('#erso')[0].play();
        alertify.log("This future is not available right now...!");
//        alert('this future is not available right now...!');
    }
});
$('#skillserchtt').keydown(function () {
    $('#jvfk3').fadeIn(100);
    var skill = $('#skillserchtt').val().trim();
    $.getJSON("skcadvac?skillcomp=" + skill + "", function (response) {
        var array = response;
        $('#jvfk3').empty();
        for (var i in array) {
            var onee = array[i];
            var html = "<li class='fcx3'>" + onee.skillName + "</li>";
            $('#jvfk3').append(html);
        }

        $('.fcx3').click(function () {
            var yrr = $(this).text().trim();
            $('#jvfk3').fadeOut(100);
            var skill = "<div class='col-sm-4'>\n\
                                <div class='form-group row'>\n\
                                    <div class='col-sm-12'>\n\
                                        <input type='checkbox' class='abc' value='" + yrr + "'>\n\
                                        <div class='btn-group'>\n\
                                            <label  class='btn btn-success amd'>\n\
                                                <span class='content'>" + yrr + "</span>\n\
                                            </label>\n\
                                        </div>\n\
                                    </div>\n\
                                </div>\n\
                                </div>";
            $('#kij').append(skill);
            $('#skillserchtt').val("");
        });
    });
});