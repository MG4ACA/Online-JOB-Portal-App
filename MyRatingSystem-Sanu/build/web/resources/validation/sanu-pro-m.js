/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(window).load(function () {
    clr();
});
//update summery
$('#sumb').click(function () {
    $('#sum1').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("☹️Summery must contai at least 50 words..!");
            e.preventDefault();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            alertify.log("Summery one : ✔️");
//            clr();
            //update summery
        }
    });

    $('#sum2').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("☹️Summery must contai at least 50 words..!");
            e.preventDefault();
            $('#ri1').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ri1').empty();
            alertify.log("Summery  : ✔️");
//            clr();
        }
    });

    var formSerialised = $("#sumF1").serialize();
    $.post("upSum", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Your Summary Was Updated..!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }
    });
});

//2
$('#rb1').click(function () {
    $('#reaser').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Tell us about your research interests");
            e.preventDefault();
            $('#rlabe').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#rlabe').empty();
            alertify.log("Reserch : ✔️");
            //update summery
//            clr();

        }
    });

    //Research update
    var formSerialised = $("#reseF1").serialize();
    $.post("updRea", formSerialised, function (response) {
        alertify.log("Reaserch Updated..!");
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Your experiances are Updated..!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }
    });
});

//3
$('#exbtn').click(function () {
    $('#eComName').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter You Working Experince");
            e.preventDefault();
            $('#rlabe').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#rlabe').empty();
            alertify.log("company : ✔️");
            //update summery
//            clr();

        }
    });

    $('#ecDes').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter You Working Experince Description");
            e.preventDefault();
            $('#rlv3').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#rlv3').empty();
            alertify.log("Description : ✔️");
            //update summery
//            clr();

        }
    });


//Prior Experiance Update
    var formSerialised = $("#expF1").serialize();
    $.post("updExp", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Your experiances are Updated..!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }
    });
});



//4
$('#keybtn4').click(function () {
    $('#kexper').each(function (e) {
        email_address = $(this);
        email_regex = /^[0-9a-zA-Z ]*$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter your Key Expertise");
            e.preventDefault();
            $('#ri35').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ri35').empty();
            alertify.log("Key Exp. : ✔️");
//            clr();

        }
    });

//Key Expertice
    var formSerialised = $("#FkeyEx1").serialize();
    $.post("keyEx", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Key Expertice Updated...!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }

    });
});




//5
$('#dbbtn').click(function () {
    $('#degree').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter the digree name..");
            e.preventDefault();
            $('#dlab').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#dlab').empty();
            alertify.log("Digre : ✔️");
        }
    });

    $('#year').each(function (e) {
        email_address = $(this);
        email_regex = /^\d{4}$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter the digree year..");
            e.preventDefault();
            $('#dlab').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#dlab').empty();
            alertify.log("Description : ✔️");
        }
    });

//Education
    var formSerialised = $("#eduF3").serialize();
    $.post("updaEdu", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Educations are updated..!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }

    });
});




//6
$('#fetbtn1').click(function () {
    $('#skill_name').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Please insert your skill name");
            e.preventDefault();
            $('#ffw9').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw9').empty();
            alertify.log("Skill : ✔️");
        }
    });

    $('#presentage').each(function (e) {
        email_address = $(this);
        email_regex = /(?:\b|-)([1-9]{1,2}[0]?|100)\b/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Please enter you skill presentage");
            e.preventDefault();
            $('#ffw9').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw9').empty();
            alertify.log("Presentage : ✔️");
        }
    });

//fuctures Skills
    var formSerialised = $("#featf8").serialize();
    $.post("updFeat", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Skill Aded..!");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }

    });
});


//7
$('#fetbtn2').click(function () {
    $('#newski-name').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Please insert your skill name");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("Skill : ✔️");
        }
    });

    $('#new-presge').each(function (e) {
        email_address = $(this);
        email_regex = /(?:\b|-)([1-9]{1,2}[0]?|100)\b/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Please enter you skill presentage");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("Presentage : ✔️");
        }
    });

//fuctures Skills
    var formSerialised = $("#featf9").serialize();
    $.post("addSkill", formSerialised, function (response) {
        if (response == "true") {
            $('#othe')[0].play();
            alertify.log("☺️Skill Aded Succsessfully..!");
            clr();
        } else {
            alertify.log("There is a problem in adding skills...!");
            clr();
        }
    });
});



//8
$('#updbtn').click(function () {
    $('#pr').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter your project name..!");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("Project : ✔️");
        }
    });

    $('#prdes').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter Your project description");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("Description : ✔️");
        }
    });

    $('#courset').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter your follwed courses");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("Course : ✔️");
        }
    });

    $('#courseDeta').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Please give us a little description");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            $('#erso')[0].play();
            alertify.log("Course Description : ✔️");
        }
    });

    $('#lang').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter what languages you speak");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            $('#erso')[0].play();
            alertify.log("Langunage : ✔️");
        }
    });

    $('#certific').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter about your Certificates");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            $('#erso')[0].play();
            email_address.css({"border": "1px solid green"});
            $('#ffw10').empty();
            alertify.log("certificets : ✔️");
        }
    });

    $('#cdes').each(function (e) {
        email_address = $(this);
        email_regex = /^[\S\s]{50,500}$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Give us a little description ");
            e.preventDefault();
            $('#ffw10').empty();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            $('#erso')[0].play();
            $('#ffw10').empty();
            alertify.log("certificets : ✔️");

        }
    });

//Accomplishments
    var formSerialised = $("#accoF1").serialize();
    $.post("updaAcco", formSerialised, function (response) {
        if (response == 'true') {
            $('#othe')[0].play();
            alertify.log("☺️Accomplishments Updated..");
            clr();
        } else {
            $('#erso')[0].play();
            alertify.log("Ops there is something wrong with MyRatings..!");
            clr();
        }

    });
});



$('#exbtn3').click(function () {
    $('#wplace').each(function (e) {
        email_address = $(this);
//        email_regex = /^[a-zA-Z ]+$/i;
        if (email_address.val() == "") {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Enter You Current Working Place");
            e.preventDefault();
            $('#rlabe').empty();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            $('#rlabe').empty();
            alertify.log("Working Place : ✔️");
            //update summery
//            clr();

        }
    });



//Prior Experiance Update
    var formSerialised = $("#kun").serialize();
    $.post("workingPlace", formSerialised, function (response) {
//        if (response == 'true') {
        $('#othe')[0].play();
        alertify.log("☺️Your are Updated..!");
        clr();
//            clr();
//        } else {
//            alertify.log("Ops there is something wrong with MyRatings..!");
//            clr();
//        }
    });
});
function clr() {
    $('#wplace').val("");
    $('#wdes').val("");
    F
    $('#sum2').val("");
    $('#sum1').val("");
    $('#ri1').empty();
    $('#reaser').val("");
    $('#rlabe').empty();
    $('#eComName').val("");
    $('#rlv3').empty();
    $('#ecDes').val("");
    $('#kexper').val("");
    $('#ri35').empty();
    $('#degree').val("");
    $('#year').val("");
    $('#dlab').empty();
    $('#skill_name').val("");
    $('#presentage').val("");
    $('#ffw9').empty();
    $('#newski-name').val("");
    $('#new-presge').val("");
    $('#ffw10').empty();
    $('#pr').val("");
    $('#prdes').val("");
    $('#courset').empty();
    $('#courseDeta').val("");
    $('#lang').val("");
    $('#certific').val("");
    $('#cdes').val("");
    $('#lstj8').empty();
}



$('#cpopo').click(function () {
//    if ($('#cpopo').val() == '') {
//        $('#erso')[0].play();
//        alertify.log('Please choose a profile pic before update..!');
//    } else {
        var form = new FormData($("#pppform")[0]);
        $('#erso')[0].play();
        $.ajax({
            url: "changepp",
            method: "POST",
            dataType: 'json',
            data: form,
            processData: false,
            contentType: false,
            success: function (result) {
                alertify.log("You changed your Profile pic..!");
            },
            error: function (er) {

            }
        });
//    }
});