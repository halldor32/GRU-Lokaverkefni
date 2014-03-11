
  <?php
    include 'core/init.php';
    include 'includes/overall/header.php';

    // if (empty($_POST) === false) {
    //   if (user_exists($_POST['change_first_name'], $pdo)) {
    //     $errors[] = 'Notendanafnið \'' . $_POST['change_first_name'] . '\' er nú þegar tekið.';
    //   }
    //   if (preg_match("/\\s/", $_POST['change_first_name']) == true) {
    //     $errors[] = 'Notendanafnið má ekki hafa bil í því.';
    //   }
    //   if (preg_match("/\\s/", $_POST['password'])) {
    //     $errors[] = 'Lykilorðið má ekki hafa bil í því.';
    //   }
    // }
  ?>
<!-- Nav Bar ___________________________________________________________________-->
	<?php include('includes/nav.inc.php') ?> 
  <!-- End Nav -->

  <!-- Main Page Content-->
  <div class="row MainRow shadow">
    <div class="row">
    <div class="large-4 columns">
      <h3>Notendastillingar hjá <?= $user_data['username']; ?></h3>
      <p></p>
    </div>
    <div class="large-8 columns">
      <fieldset>
        <legend class="center">Breyta nafni</legend>
        <form action="" id="nameSettings" name="nameSettings" method="post">
          <!-- Breyta fyrsta nafni -->
          <div class="large-12 columns">
            <label for="change_first_name">Breyta fornafni</label>
            <input type="text" name="change_first_name" id="change_first_name">
          </div>
          <!-- Breyta seinna nafni -->
          <div class="large-12 columns">
            <label for="change_last_name">Breyta eftirnafni</label>
            <input type="text" name="change_last_name" id="change_last_name">
          </div>
          <div class="center"><input type="submit" value="Breyta" class="button buttonSlider" name="changeName" id="changeName"></div>
        </form>
      </fieldset>

      <?php 

        if (isset($_POST['change_first_name']) && isset($_POST['change_last_name'])) {
          $change_first_name = $_POST['change_first_name'];
          $change_last_name = $_POST['change_last_name'];

          change_name($change_first_name, $change_last_name, $user_data['userID'], $pdo);

          echo 'Nafninu þínu hefur verið breytt!';
        }

       ?>

      <fieldset>
        <legend class="center">Breyta lykilorði</legend>
        <form action="" id="passwordSettings" name="passwordSettings" method="post">
          <!-- Skrifa Gamla lykilorðið -->
          <div class="large-12 columns MarginBottom">
            <label for="oldPassword">Skrifaðu gamla lykilorðið</label>
            <span id="passwordS"></span>
            <input type="password" name="oldPassword" id="oldPassword">
          </div>
          <!-- Skrifa nýtt lykilorð -->
          <div class="large-12 columns MarginBottom">
            <label for="newPassword">Skráðu nýtt lykilorð</label>
            <input type="password" name="newPassword" id="newPassword">
          </div>
          <!-- Staðfesta lykilorð -->
          <div class="large-12 columns MarginBottom">
            <label for="confirmNewPassword">Staðfestu nýtt lykilorð</label>
             <span id="passwordS"></span>
            <input type="password" name="confirmNewPassword" id="confirmNewPassword">
          </div>
          <div class="center"><input type="submit" value="Breyta" class="button buttonSlider" name="changePassword" id="changePassword"></div>
        </form>

        <?php 

        if (isset($_POST['oldPassword']) && isset($_POST['newPassword']) && isset($_POST['confirmNewPassword'])) {
          $oldPassword = md5($_POST['oldPassword']);
          $newPassword = md5($_POST['newPassword']);
          $confirmNewPassword = md5($_POST['confirmNewPassword']);

          change_password($oldPassword, $newPassword, $user_data['userID'], $pdo);

          echo 'Lykiloðinu þínu hefur verið breytt!';
        }

       ?>

      </fieldset>



    </div>
  </div>
</div>
  <!-- End Main Page-->

  <!-- Footer ________________________________________________________________-->
  <?php
    include('includes/overall/footer.php');
   ?>