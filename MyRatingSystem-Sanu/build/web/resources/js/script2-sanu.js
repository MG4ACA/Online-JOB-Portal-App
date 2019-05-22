/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//alert('sw');
//active case
$(".btc").click(function () {
    var page = this.id;
    var resp = page.replace(/\s/g, "");
    $(".btc").parent().closest("li").removeClass("active");
    $(this).parent().closest('li').addClass("active");
    localStorage.setItem("ds", resp);
});
var selectedone = localStorage.getItem("ds");
$("#" + selectedone).parent().closest('li').addClass("active");
//profile click managemet event
//home profile div management settings
$('.clii').click(function () {
    $(".clii").parent().removeClass("active");
    var reso = $(this).closest("li").text().trim();
    $(this).closest("li").addClass("active");
    var out = reso.replace(/\s/g, '');
    $(".prof-man").css({"display": "none"});
    $('#' + out).css({"display": "block"});
});
//cv clisk
$("#cvclick").click(function () {
    var win = window.open('loadcv', '_blank');
});
$("#cvclick2").click(function () {
//    alert('s');s
    var win = window.open('loadcv2', '_blank');
});

//rating
var arraysd = new Array();
$(window).load(function () {
    $(".rat1").each(function () {
        arraysd.push(this.id);

    });
})

//mynetwotk
$(document).ready(function () {
    var $btnSets = $('#responsive'),
            $btnLinks = $btnSets.find('a');

    $btnLinks.click(function (e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.user-menu>div.user-menu-content").removeClass("active");
        $("div.user-menu>div.user-menu-content").eq(index).addClass("active");
    });
});

$(document).ready(function () {
    $("[rel='tooltip']").tooltip();

    $('.view').hover(
            function () {
                $(this).find('.caption').slideDown(250); //.fadeIn(250)
            },
            function () {
                $(this).find('.caption').slideUp(250); //.fadeOut(205)
            }
    );
});


$("#sasam").keydown(function () {
    var seoform = $("#seof").serialize();
    $.post("advSerch", seoform, function (response) {
        var arra = response;
        $("#serad").empty();
        for (var i in arra) {
            var array = arra[i];
            var html = "<li class='vd'><a class='vdvf' href='search?id=" + array.id + "'>" + array.firstName + " " + array.lastName + "</a></li>";
            $("#serad").append(html);
        }
    });
});



//$('#pagination-demo').twbsPagination({
//    totalPages: 35,
//    visiblePages: 0,
//    onPageClick: function (event, page) {
//        $('#page-content').text('Page ' + page);
//    }
//});


//country update
$(window).load(function () {
    $.getJSON("addCountry", function () {

    });

    $('#ctload').empty();
    $.getJSON("getCtry", function (response) {
        var res = response;
        for (var i in res) {
            var arra = res[i];
            var ht = "<option>" + arra.countryname + "</option>";
            $('#ctload').append(ht);
        }

    });

});


asas();
function asas() {
    $("#lg1").css({"display": "none"});
    $("#lg2").css({"display": "block"});
    ;
    setTimeout(function () {
        $("#lg1").css({"display": "block"});
        $("#lg2").css({"display": "none"});
    }, 2000);
}

//setInterval("asas()", 60000);

