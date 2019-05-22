/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//registetring job
$('#jsaves').click(function (e) {

    $("#jrole").each(function (e) {
        email_address = $(this);
        if ((email_address.val() === "")) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("☹️Job Role Cannot Be Empty..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company address : ✔️");
        }
    });

    $("#joDes").each(function (e) {
        email_address = $(this);
        email_regex = /^(.{150,1000})$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("☹️Job description must be among 150-1000 characters..");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("ob description : ✔️");
        }
    });


    $("#jtitle").each(function (e) {
        email_address = $(this);
        if (email_address.val().trim() === "") {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("☹️Job titlte Cannot be Empty..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Job titlte : ✔️");

        }
    });
    ppsosc();

});

$('#rskill').keydown(function () {
    $('#jvfk2').fadeIn(100);
    var skill = $('#rskill').val().trim();
    $.getJSON("skcadvac?skillcomp=" + skill + "", function (response) {
        var array = response;
        $('#jvfk2').empty();
        for (var i in array) {
            var onee = array[i];
            var html = "<li class='fcx2'>" + onee.skillName + "</li>";
            $('#jvfk2').append(html);
        }

        $('.fcx2').click(function () {
            var yrr = $(this).text().trim();
            $('#rskill').val(yrr);
            $('#jvfk2').fadeOut(100);
            var sss = "<span class='tags2'>" + yrr + "</span>";
            $('#cvx2').append(sss);
            $('#rskill').val("");
        });
    });
});

//alert('s');
function ppsosc() {
    var temp = '';
    $('.tags2').each(function () {
        var va = $(this).text();
        if (temp === '') {
            temp = va + ",";
        } else {
            temp = temp + va + ",";
        }
        $('#rskill').val(temp);
    });
    var form = new FormData($("#jregF")[0]);
    $.ajax({
        url: "addJobs",
        method: "POST",
        dataType: 'json',
        data: form,
        processData: false,
        contentType: false,
        success: function (result) {
            $('#erso')[0].play();
            alertify.alert("You Have Posted Your Job..! ✔️");
            cleeee();
        },
        error: function (er) {
            console.log(er);
        }
    });
}

function cleeee() {
    $("#jrole").val("");
    $('#jrole').css({"border": "1px solid rgb(204, 204, 204)"});
    $("#joDes").val("");
    $('#joDes').css({"border": "1px solid rgb(204, 204, 204)"});
    $("#jtitle").val("");
    $('#jtitle').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#rskill').val("");
    $('#rskill').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#cvx2').empty();
}


$('#jcan').click(function () {
    cleeee();
});