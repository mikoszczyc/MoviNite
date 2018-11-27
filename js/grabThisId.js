// Zbierz wszystkie id w których jest słowo 'film-'
var grabbed = document.querySelectorAll('[id^="film-"]');
for(var i=0; i<grabbed.length;i++){
  console.log(grabbed[i].id);
}
