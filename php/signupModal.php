<!-- Modal sign up -->
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal-title">Fill up the form!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="php/signup.inc.php" method="post">
          <div class="form-group">
            <label for="inputEmail">Email address</label>
            <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" name="email" placeholder="E-mail" required>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="inputUsername">Username</label>
            <input type="text" class="form-control" id="inputUsername" name="username" placeholder="Username" required>
          </div>
          <div class="form-group">
            <label for="inputPassword">Password</label>
            <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password" required>
          </div>
          <button type="submit" name="signup-submit" class="btn-sm btn-primary">Sign up</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-sm btn-primary" data-toggle="modal" data-target="#loginModal" data-dismiss="modal">Log in</button>
      </div>
    </div>
  </div>
</div>
