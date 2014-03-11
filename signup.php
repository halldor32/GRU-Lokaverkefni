
  <?php
    include 'core/init.php';
    include 'includes/overall/header.php';

    if (empty($_POST) === false) {
      if (user_exists($_POST['username'], $pdo)) {
        $errors[] = 'Notendanafnið \'' . $_POST['username'] . '\' er nú þegar tekið.';
      }
      if (preg_match("/\\s/", $_POST['username']) == true) {
        $errors[] = 'Notendanafnið má ekki hafa bil í því.';
      }
      if (preg_match("/\\s/", $_POST['password'])) {
        $errors[] = 'Lykilorðið má ekki hafa bil í því.';
      }
    }
  ?>
<!-- Nav Bar ___________________________________________________________________-->
	<?php include('includes/nav.inc.php') ?> 
  <!-- End Nav -->

  <!-- Main Page Content-->
  <div class="row MainRow shadow">
    <div class="row">
      <div class="large-6 small-10 small-centered columns">

        <?php 
        // gáir hvort notandi hefur verið skráður áður
    if (isset($_GET['success']) && empty($_GET['success'])) {
      echo 'Þú hefur verið skráð/ur';
    }
    else {


    if (empty($_POST) === false && empty($errors) === true) {
      $register_data = array(
          'username'    => $_POST['username'],
          'password'    => $_POST['password'],
          'first_name'  => $_POST['first_name'],
          'last_name'   => $_POST['last_name'],
        );

      register_user($register_data, $pdo);
      header('Location: signup.php?success');
      exit();

    }
    else if (empty($errors) === false) {
      echo output_errors($errors);
    }

   ?>
        <!-- Skráningarform -->
        <h5>Skráning</h5>
          <form action="" id="signup" name="signup" method="post">
            <!-- Nafn -->
            <div class="large-11 large-centered columns">
              <label for="first_name">Fornafn</label>
              <input type="text" name="first_name" id="first_name">
            </div>
            <!-- Nafn -->
            <div class="large-11 large-centered columns">
              <label for="last_name">Eftirnafn</label>
              <input type="text" name="last_name" id="last_name">
            </div>
            <!-- NotandaNafn -->
            <div class="large-11 large-centered columns">
              <label for="username">Notendanafn</label>
              <input type="text" name="username" id="username">
            </div>
            <!-- Password -->
            <div class="large-11 large-centered columns MarginBottom">
              <label for="password">Lykilorð</label>
              <span id="passwordS"></span>
              <input type="password" name="signUpPassword" id="signUpPassword">
            </div>
            <!-- Confirm Password -->
            <div class="large-11 large-centered columns">
              <label for="confirmPassword">Staðfesta Lykilorð</label>
              <input type="password" name="confirmPassword" id="confirmPassword">
            </div>
            <div class="center"><input class="buttonSlider" type="submit" value="Skrá" name="signupBtn" id="signupBtn"></div>
          </form>
          <?php } ?>
      </div>
  </div>
</div>
  <!-- End Main Page-->

  <!-- Footer ________________________________________________________________-->
  <?php
    include('includes/overall/footer.php');
   ?>