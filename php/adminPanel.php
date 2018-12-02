<div class="row mt-5 justify-content-center">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Add movies
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body text-white-50" >
        <form action="php/upload.php" method="post" enctype="multipart/form-data" autocomplete="off">
          <input type="text" style="width: 400px" name="datatitle" placeholder="Url to IMDB page"><br>
          <input type="text" style="width: 400px" name="movieTitle" placeholder="Title"><br>
          <input type="text" style="width: 400px" name="movieDesc" placeholder="Description"><br>
          <input type="text" style="width: 400px" name="movieDirector" placeholder="Director"><br>
          <input type="text" style="width: 400px" name="movieReleaseDate" placeholder="Year of release"><br>
          <input type="text" style="width: 400px" name="movieTrailerUrl" placeholder="youtube trailer URL"><br>
          Movie cover
          <input type="file" style="width: 400px" name="movieCover" required><br>
          <button type="submit" name="submit-upload">Add</button>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
