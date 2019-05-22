/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('#looobtn').click(function (e) {
    $('#fnamel').each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Your First Name Cannot Be Empty");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
//            alertify.log("Company address : ✔️");
        }
    });

    $("#lnamel").each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Your Last Name Cannot Be Empty");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Name : ✔️");
        }
    });

    $("#emailad").each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Please Enter a Valid Email Address...!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Email  : ✔️");
        }
    });

    $("#passt").each(function (e) {
        email_address = $(this);
        email_regex = /[a-zA-Z0-9]{8,}/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Password Didnt Match...");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
//            alertify.log("Company address : ✔️");
        }
    });

    $("#passt2").each(function (e) {
        email_address = $(this);
        email_regex = /[a-zA-Z0-9]{8,}/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Both passwords must be same..!");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Password : ✔️");
        }
    });

    var pass1 = $("#passt").val();
    var pass2 = $("#passt2").val();
    if (pass1 !== pass2) {
        $("#passt").focus();
        $("#passt").css({"border": "1px solid red"});
        $("#passt2").css({"border": "1px solid red"});
        alertify.log("🙁 Both passwords must be same..!");
        return false;
    }

    $("#tplog").each(function (e) {
        email_address = $(this);
        email_regex = /^[0-9-+]+$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Your TP Cannot Be Empty");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("TP : ✔️");
        }
    });

    $("#postCl").each(function (e) {
        email_address = $(this);
        email_regex = /^[0-9-+]+$/;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("🙁 Your postal code Cannot Be Empty");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Postal code : ✔️");
        }
    });

    $("#posdl").each(function (e) {
        email_address = $(this);
        email_regex = /^[a-zA-Z ]+$/i;
        if (!email_regex.test(email_address.val())) {
            $('#erso')[0].play();
            email_address.focus();
            email_address.css({"border": "1px solid red"});
            alertify.log("😎 Whats Your Possition in the Industry..?");
            e.preventDefault();
            return false;
        } else {
            email_address.css({"border": "1px solid green"});
            alertify.log("Your Possition : ✔️");
        }
    });

    $('#looobtn').attr({"type": "submit"});

});
