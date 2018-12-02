<!-- Generates a Bootstrap Modal with data extracted from the DB -->

<?php
foreach ($movieId as $x) {
?>
<div class="modal fade" id="myModal<?=$x['movieID']?>">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content bg-black">
      <div class="modal-header">

      <!-- Movie Title -->
      <h3 class="text-white-50"><?=$x['movieTitle']?></h3>

        <!-- Close button -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body container">
      <div class="row">
        <div class="col">

        <!-- Movie Cover -->
        <img class="card-img " src="img/movieCovers/<?=$x['datatitle']?>.jpg" alt="<?=$x['movieTitle']?>">
        </div>
        <div class="col">
<?
if (isset($_SESSION['userId'])) {
?>
  <!-- Fav -->
  <a href="./php/fav.php?id=<?=$x['movieID']?>"><img src="img/fav.png"></a>
<?
}
?>
        <!-- IMDb Rating-->
        <span class="imdbRatingPlugin" data-title="<?=$x['datatitle']?>" data-style="p2">
        <a href="https://www.imdb.com/title/<?=$x['datatitle']?>/?ref_=tt_plg_rt"
        src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/images/imdb_46x22.png">
          </a></span>
          <script>
          (function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];
        if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;
        js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";
        stags.parentNode.insertBefore(js,stags);})(document,'script','imdb-rating-api');
        </script>

        <!-- Director -->
        <h4 class="text-white-50">Director: </h4>
        <p class="text-white-50"><?=$x['director']?></p>

        <!-- Movie Description -->
        <h4 class="text-white-50">Description: </h4>
        <p class="text-white-50"><?=$x['movieDesc']?></p>
        </div>
      </div>
      <div class="row">

        <!-- Video -->
      <div class="embed-responsive embed-responsive-16by9">
        <iframe id="<?=$x['movieID']?>" class="embed-responsive-item"  src="https://www.youtube-nocookie.com/embed/<?=$x['movieTrailerUrl']?>?rel=0&amp;&enablejsapi=1; showinfo=0"  frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      </div>
      </div>
      </div>
    </div>
  </div>
</div>
<?php
};
?>
