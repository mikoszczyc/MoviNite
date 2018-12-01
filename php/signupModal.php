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
            <label>Username</label>
            <input type="text" class="form-control" name="username" placeholder="Username" required autocomplete="off">
          </div>
          <div class="form-group">
            <label>Email address</label>
            <input type="email" class="form-control" aria-describedby="emailHelp" name="email1" placeholder="E-mail" required>
            <input type="email" class="form-control" aria-describedby="emailHelp" name="email2" placeholder="Confirm e-mail" required autocomplete="off">
            <small id="emailHelp" class="form-text text-muted">Don't worry. We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password1" placeholder="Password" required autocomplete="off">
            <input type="password" class="form-control" name="password2" placeholder="Confirm password" required autocomplete="off">
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
