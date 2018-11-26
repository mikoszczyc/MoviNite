<!-- Generates a Bootstrap Modal with data extracted from the DB -->

<?php
foreach ($movieId as $datatitle) {
echo '<div class="modal fade" id="modal'.$datatitle['movieID'].'">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content bg-black">
      <div class="modal-header">

      <!-- Movie Title -->
      <h3 class="text-white-50">'.$datatitle['movieTitle'].'</h3>

        <!-- Close button -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body container">
      <div class="row">
        <div class="col">

        <!-- Movie Cover -->
        <img class="card-img " src="img/movieCovers/'.$datatitle['datatitle'].'.jpg" alt="'.$datatitle['movieTitle'].'">
        </div>
        <div class="col">

        <!-- IMDb Rating-->
        <span class="imdbRatingPlugin" data-title="'.$datatitle['datatitle'].'" data-style="p2">
        <a href="https://www.imdb.com/title/'.$datatitle['datatitle'].'/?ref_=tt_plg_rt"
        src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/images/imdb_46x22.png">
          </a></span>
          <script>
          (function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];
        if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;
        js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";
        stags.parentNode.insertBefore(js,stags);})(document,\'script\',\'imdb-rating-api\');
        </script>

        <!-- Movie Description -->
        <p class="text-white-50">'.$datatitle['movieDesc'].'</p>
        </div>
      </div>
      <div class="row">
      <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" src="https://www.youtube-nocookie.com/embed/'.$datatitle['movieTrailerUrl'].'?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      </div>
      </div>
      </div>
    </div>
  </div>
</div>
';
}
?>
