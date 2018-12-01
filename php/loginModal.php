<!-- Modal login -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal-title">Fill the form up!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form action="php/login.inc.php" method="post">
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" id="inputPassword" name="passworduid" placeholder="Password">
          </div>
          <button type="submit" name="login-submit" class="btn-sm btn-primary">Log in</button>
        </form>
      </div>
    </div>
  </div>
</div>
