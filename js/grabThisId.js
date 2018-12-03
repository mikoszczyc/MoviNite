$(document).ready(function() {
// Skrypt zatrzymuje film po zamknięciu elementu MODAL
var grabbed = document.querySelectorAll('[id^="myModal"]');
var myModal;
var innerIframe;
var player;
for(var i=0; i<grabbed.length;i++){
  // console.log(grabbed[i].id);
  $(grabbed[i]).on('show.bs.modal', function () {
    myModal = this.id;
    console.log(this.id);
  });
  $(grabbed[i]).on('hide.bs.modal', function () {
    var iframe = this.querySelectorAll("iframe.embed-responsive-item");
    console.log(iframe[0].id);
    var video = $("#"+iframe[0].id).attr("src");
    $("#"+iframe[0].id).attr("src","");
    $("#"+iframe[0].id).attr("src",video);
});
}

});
