// Skrypt zatrzymuje film po zamknięciu elementu MODAL
var grabbed = document.querySelectorAll('[id^="myModal"]');
var myModal;
var innerIframe;
for(var i=0; i<grabbed.length;i++){
  // console.log(grabbed[i].id);
  $(grabbed[i]).on('show.bs.modal', function () {
    myModal = this.id;
    // console.log(this.id);
  })
  $(grabbed[i]).on('hide.bs.modal', function () {
    // console.log(this.id + " closed");
    innerIframe = this.getElementsByClassName('embed-responsive-item');
    $('iframe').attr('src', $('iframe').attr('src'));
    // console.log(innerIframe[0]);
});
}
