/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
adad();
function adad() {
    $.getJSON('getAllC', function (response) {
        var array = response;
        $("#mclo").empty();


        for (var i in array) {
            var eleme = array[i];
            eleme.id;
            eleme.comName;
            eleme.title;
            eleme.profileP;
            eleme.address;
            eleme.followers;
            eleme.aboutComp;
            eleme.website;
            eleme.yearfound;
            eleme.companytype;
            eleme.companySize;

            var onecol = "<div class='col-page col-sm-4 col-md-3'>\n\
                                <a href='' class='fondo-publicacion-home'>\n\
                                    <div class='img-publicacion-home'>\n\
                                        <img class='img-responsive' src='resources/profile/" + eleme.profileP + "'>\n\
                                    </div>\n\
                                    <div class='contenido-publicacion-home'>\n\
                                        <h3>" + eleme.comName + "</h3>\n\
                                            <p>" + eleme.aboutComp + "<span>...</span></p>\n\
                                    </div>\n\
                                    </a>\n\
                            </div>";


            $("#mclo").append(onecol);

        }
    });
}

setInterval('adad()', 20000);




//load all owners of comapnies
function ladCoUsr() {
    $.getJSON("getAllCpy", function (response) {

    });

}


//load usrs company
cmploUsr();
function cmploUsr() {
    $.getJSON("getAllCpy", function (response) {
        var array = response;
//        alert(response);
        if (response!="") {
            $("#mycom").empty();
            var cp1 = array[0];
            var cp2 = array[1];
            var cp3 = array[2];

            var html = "<div class='col-page col-sm-8 col-md-6'>\n\
                        <a href='' class='black fondo-publicacion-home'>\n\
                            <div class='img-publicacion-principal-home'>\n\
                                <img class='img-responsive' src='resources/profile/" + cp1.profileP + "'>\n\
                            </div>\n\
                            <div class='contenido-publicacion-principal-home'>\n\
                                <h3>" + cp1.comName + "</h3>\n\
                                <p>" + cp1.aboutComp + "..<span>...</span></p>\n\
                            </div>\n\
                            <div class='mascara-enlace-blog-home'>\n\
                                <span>View </span>\n\
                            </div>\n\
                        </a>\n\
                    </div>\n\
                    <div class='col-page col-sm-4 col-md-3'>\n\
                        <a href=''  class='fondo-publicacion-home'>\n\
                            <div class='img-publicacion-home'>\n\
                                <img class='img-responsive' src='resources/profile/" + cp2.profileP + "'>\n\
                            </div>\n\
                            <div class='contenido-publicacion-home'>\n\
                                <h3>" + cp2.comName + "</h3>\n\
                                <p>" + cp2.aboutComp + ".<span>...</span></p>\n\
                            </div>\n\
                            <div class='mascara-enlace-blog-home'>\n\
                                <span>View </span>\n\\n\
                            </div>\n\
                        </a>\n\
                    </div>\n\
                    <div class='col-page col-sm-4 col-md-3'>\n\
                        <a href='' class='fondo-publicacion-home'>\n\
                            <div class='img-publicacion-home'>\n\
                                <img class='img-responsive' src='resources/profile/" + cp3.profileP + "'>\n\
                            </div>\n\
                            <div class='contenido-publicacion-home'>\n\
                                <h3>" + cp3.comName + "</h3>\n\
                                <p>" + cp3.aboutComp + ".<span>...</span></p>\n\
                            </div>\n\
                            <div class='mascara-enlace-blog-home'>\n\
                                <span>View </span>\n\
                            </div>\n\
                        </a>\n\
                    </div>";
            $("#mycom").append(html);
        }
    });
}
setInterval("cmploUsr()", 20000);

