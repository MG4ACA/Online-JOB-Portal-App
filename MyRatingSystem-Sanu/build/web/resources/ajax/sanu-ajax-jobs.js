/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

loadTopJobs();
loadAllCircleJ();
function loadTopJobs() {
    $.getJSON("getAllJobs", function (response) {
        var array = response;
        $("#latesetJoba").empty();
        array[0].jobBanner;
        array[0].title;
        array[0].pdate;

        var html = "<div id='carousel-example' style='margin-top:-20px;' class='carousel slide team team-web-view' data-ride='carousel'>\n\
<div class='carousel-line'>\n\
<div class='controls pull-right'>\n\
        <a class='left fa fa-angle-left btn' href='#carousel-example' data-slide='prev'></a><a class='right fa fa-angle-right btn ' href='#carousel-example' data-slide='next'></a></div></div>\n\
<div class='carousel-inner'>\n\
    <div class='item active'>\n\
        <div class='row'>\n\
            <div class='col-sm-3'>\n\
                <div class='col-item'>\n\
                    <div class=''>\n\
                        <div class='view'>\n\
                            <div class='caption'>\n\
                                <p>Apply Today</p>\n\
                                <a class='abdf' id='" + array[0].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                            </div>\n\
                            <img src='resources/wallpics/job/" + array[0].jobBanner + "' class='img-responsive'>\n\
                        </div>\n\
                        <div class='info'>\n\
                            <p class='small' style='text-overflow: ellipsis'>" + array[0].title + "</p>\n\
                            <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + array[0].pdate + ".</small>\n\
                        </div>\n\
                        <div class='stats turqbg'>\n\
                            <span class='fa fa-heart-o dcv'><strong>0</strong></span>\n\
                            <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                        </div>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[1].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[1].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[1].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[1].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[2].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[2].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[2].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + array[2].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[3].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[3].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[3].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[3].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong></strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
        </div>\n\
    </div>\n\
    <div class='item'>\n\
        <div class='row'>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[4].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[4].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[4].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + array[4].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong></strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[5].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[5].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[5].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[5].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[6].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[6].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[6].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[6].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
            <div class='col-sm-3'>\n\
                <div class=''>\n\
                    <div class='view'>\n\
                        <div class='caption'>\n\
                            <p>Apply Today</p>\n\
                            <a class='abdf' id='" + array[7].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
                        </div>\n\
                        <img src='resources/wallpics/job/" + array[7].jobBanner + "' class='img-responsive'>\n\
                    </div>\n\
                    <div class='info'>\n\
                        <p class='small' style='text-overflow: ellipsis'>" + array[7].title + "</p>\n\
                        <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[7].pdate + ".</small>\n\
                    </div>\n\
                    <div class='stats turqbg'>\n\
                        <span class='fa fa-heart-o dcv'> <strong>0</strong></span>\n\
                        <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
        </div>\n\
    </div>\n\
</div>\n\
</div>";
        $("#latesetJoba").append(html);
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
            window.open('jbview?id='+this.id+'', '_blank');
        });

    });

}

setInterval("loadTopJobs()", 20000);




function loadAllCircleJ() {
    $.getJSON("getAllJobs", function (response) {
        var array = response;
        $("#loadjss").empty();
        array[0].jobBanner;
        array[0].title;
        array[0].pdate;
        var htm2 = "<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[0].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[0].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[0].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + array[0].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[1].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[1].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[1].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i> " + array[1].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[2].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[2].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[2].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[2].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[3].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[3].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[3].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[3].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[4].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[4].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[4].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[4].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[5].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[5].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[5].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[5].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[6].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[6].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[6].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[6].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>\n\
<div class='col-md-3'>\n\
<div class='view'>\n\
    <div class='caption'>\n\
        <p>Apply Today</p>\n\
        <a class='abdf2' id='" + array[7].jid + "' rel='tooltip' title='View'><span class='fa fa-search fa-2x'></span></a>\n\
    </div>\n\
    <img src='resources/wallpics/job/" + array[7].jobBanner + "' class='img-responsive'>\n\
</div>\n\
<div class='info'>\n\
    <p class='small' style='text-overflow: ellipsis'>" + array[7].title + "</p>\n\
    <p class='small coral text-right'><i class='fa fa-clock-o'></i>" + array[7].pdate + ".</small>\n\
</div>\n\
<div class='stats turqbg'>\n\
    <span class='fa fa-heart-o dcv2'> <strong>0</strong></span>\n\
    <span class='fa fa-eye pull-right'> <strong>0</strong></span>\n\
</div>\n\
</div>";
        $("#loadjss").append(htm2);
        $("[rel='tooltip']").tooltip();

        $('.view').hover(
                function () {
                    $(this).find('.caption').slideDown(250); //.fadeIn(250)
                },
                function () {
                    $(this).find('.caption').slideUp(250); //.fadeOut(205)
                }
        );

        $(".abdf2").click(function () {
           window.open('jbview?id='+this.id+'', '_blank');
        });

    });


}

setInterval("loadAllCircleJ()", 18000);

