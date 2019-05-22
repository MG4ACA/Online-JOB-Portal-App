/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#saveBtnf').click(function (e) {
    $('#coName').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Company name must not be empty..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company Name : ✔️");
        }
    });

    $("#coTitle").each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Company title must not be empty..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company Title : ✔️");
        }
    });

    $("#comdex").each(function (e) {
        email_address = $(this);
        email_regex = /^(.{150,1000})$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Company description must be among 150-1000 characters..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company Description : ✔️");
        }
    });

    $("#comweba").each(function (e) {
        email_address = $(this);
        email_regex = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("Try a Proper web Address...!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company Webaddress : ✔️");
        }
    });

    $("#comAddress").each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z0-9\s,'-]*$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            e.preventDefault();
            alertify.log("Example :" + "SriLanka-Kaluwalla-Galle");
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Company address : ✔️");
        }
    });

    callmeiyt();
});


function callmeiyt() {
    //add a company
    var temp = '';
    $('.tags').each(function () {
        var va = $(this).text();
        if (temp === '') {
            temp = va + ",";
        } else {
            temp = temp + va + ",";
        }
        $('#comskees').val(temp);
    });
    var formSerialised = $("#cpyAdF").serialize();
    $.post("addcompany", formSerialised, function (response) {
        if (response === 'true') {
            alertify.alert("Your company was successfully registerd ✔️");
            clearallte();
        } else {
            alertify.log("☹️Registration Failed..try again laiter..!")
        }
    });
}


function clearallte() {
    $('#coName').val("");
    $('#coName').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#coTitle').val("");
    $('#coTitle').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#comdex').val("");
    $('#comdex').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#comweba').val("");
    $('#comweba').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#comAddress').val("");
    $('#comAddress').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#comskees').val("");
    $('#comskees').css({"border": "1px solid rgb(204, 204, 204)"});
    $('#coName').focus();
    $('#cvx').empty();
}

$('#cancelBtnf').click(function () {
    clearallte();
});


