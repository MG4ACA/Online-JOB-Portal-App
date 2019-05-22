/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('.dm').click(function () {
//    alert('ss');
    $.getJSON("addAlert?jid=" + this.id + "", function (response) {
       alertify.alert("Your Have Succsesfully Applied for this job..!");
        $(".dm").prop("disabled", true);
    });

});

