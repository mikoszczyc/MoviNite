<div id="favourites" class="container mt-5 justify-content-center bg-black" >
<div class="panel-group" id="favAccordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="favHeading">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#favAccordion" href="#favCollapse" aria-expanded="true" aria-controls="favCollapse">
          Your watchlist
        </a>
      </h4>
    </div>
    <div id="favCollapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="favHeading">
      <div class="panel-body text-white-50" >

        <!-- Cards with Movies -->
        <div class="row mt-5 justify-content-center">
    <?php
    // Extract data about favourite movies into an array
      $userID = $_SESSION['userId'];
      $sqlWatchlist = "SELECT * FROM movies INNER JOIN favorites ON movies.movieID = favorites.movieID WHERE favorites.userID = $userID";
      $resultWatchlist = mysqli_query($conn, $sqlWatchlist);
      $favMovieId = array();
      if (mysqli_num_rows($resultWatchlist) > 0) {
        while ($row2 = mysqli_fetch_assoc($resultWatchlist)) {
          $favMovieId[] = $row2;
        }

      foreach ($favMovieId as $datatitle2) {
        $favMovieID=$datatitle2['movieID'];
        $favMovieDatatitle=$datatitle2['datatitle'];

    echo <<< CARDS
          <div class="card card-movie-poster bg-white text-white text-center  text-align-middle mx-1 mb-2">
            <div class="card-body">
            <a data-toggle="modal" href="#myModal$favMovieID"><img class="card-img " src="img/movieCovers/$favMovieDatatitle.jpg"></a>
            </div>
          </div>
CARDS;
    }
  }
     ?>
    </div>

      </div>
    </div>
  </div>
</div>
</div>
