    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">MoVinite</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#movies">Movies</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="modal" href="#signupModal">Sign up!</a>
            </li>
            <li class="nav-item">
              <?php
              if(isset($_SESSION['userUsername'])){
                echo '<p class="nav-link">Hi '.ucfirst($_SESSION['userUsername']).'!</p>';

                echo '
                <li class="nav-item">
                  <a class="nav-link" href="php/logout.php">Logout</a>
                </li>';
              }
              else {
                echo '<p class="nav-link">You are not logged in!</p>';
              }
               ?>
            </li>
          </ul>
        </div>

      </div>
    </nav>
    <?php
    // modal signup
      include 'php/signupModal.php';
    // modal login
      include 'php/loginModal.php';
    ?>
