<!-- Header -->
<header class="masthead">
  <div class="container d-flex h-100 align-items-center">
    <div class="mx-auto text-center">
      <h1 class="mx-auto my-0 text-uppercase">MoVinite</h1>
      <!-- <h2 class="text-white-50 mx-auto mt-2 mb-5"></h2> -->
      <br>
      <a href="#movies" class="btn btn-primary js-scroll-trigger">Browse movies</a><br><br>
      <?php
      if (isset($_SESSION['userId'])) {
        echo '<a data-toggle="modal" href="#favourites" class="btn btn-dark">Your favourites!</a><br><br>';
      }
      ?>
      <a href="#about" class="btn btn-secondary js-scroll-trigger">About</a>
    </div>
  </div>
</header>
