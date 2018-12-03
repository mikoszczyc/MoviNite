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


              <?php
              if(isset($_SESSION['userUsername'])){
                echo '
                <li class="nav-item ">
                <p class="nav-link">Hi '.ucfirst($_SESSION['userUsername']).'!</p>
                </li>
                ';

                echo '
                <li class="nav-item">
                  <a class="nav-link" href="php/logout.php">Logout</a>
                </li>
                ';
              }
              elseif (@$_SESSION['userUsername']=='admin') {
                echo '
                <li class="nav-item">
                <a class="nav-link" data-toggle="modal" href="#adminPanel"><p>Hi '.ucfirst($_SESSION['userUsername']).'!</p></a>
                </li>
                ';

                echo '
                <li class="nav-item">
                  <a class="nav-link" href="php/logout.php">Logout</a>
                </li>
                ';
              }
              else {
                echo '
                <li class="nav-item">
                  <a class="nav-link" data-toggle="modal" title="You are not logged in!" href="#signupModal">Sign up!</a>
                </li>
                <p class="nav-link"></p>';
              }
               ?>

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
