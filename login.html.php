<?php 
    include 'core/init.php';
    include 'includes/overall/header.php'; 
  ?>
<!-- Header and Nav -->
<!-- Nav Bar ___________________________________________________________________-->
	<?php include 'includes/nav.inc.php'; ?> 
  <!-- End Nav -->

  <!-- Main Page Content-->
  <div class="row MainRow shadow">
    <div class="row">
      <div class="large-6 large-centered columns">
          <form action="login.php" method="post">
            <h5>Login</h5>
            <div class="large-12 columns">
              <label for="username">Notandanafn</label>
              <input type="text" name="username" id="username">
            </div>
            <div class="large-12 columns">
              <label for="password">Lykilorð</label>
              <input type="password" name="password" id="password">
            </div>
            <div class="center"><input class="buttonSlider" type="submit" value="Login" name="Submit" id="Submit"></div>
          </form>
      </div>
    </div>
  </div>
  <!-- End Main Page-->
 
 
  <!-- Footer ________________________________________________________________-->
 
  <?php
    include('includes/overall/footer.php');
   ?>