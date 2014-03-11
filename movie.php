<!-- Header and Nav -->
<?php
    include 'core/init.php';
    include 'includes/overall/header.php';
?>

	<body>
<!-- Nav Bar _________________________________________________________________-->
	<?php include('includes/nav.inc.php') ?> 
  <!-- End Nav -->

  <!-- Main Page Content______________________________________________________-->
  <div class="row MainRow shadow">
    <!--´Movie Poster -->
    <div class="large-3 columns NoPadding rowPadding">
      <div class="row">
        <div class="large-12 columns ImgPadding">
          <img class="imgScale" id="moviePoster" src="<?php echo $movie_data['image']; ?>" title="<?php echo $movie_data['name']; ?>">
        </div>
        <!-- Topp myndir í sama flokki Large -->
        <div class="paddingRight hide-for-medium-down">
          <?php include 'includes/topMovieGenre.inc.php'; ?>
        </div>
        <!-- Topp myndir enda -->
      </div>
    </div>

    <!-- Main Column -->
    <div class="large-9 columns NoPadding">
      <div class="row">

        <!-- Movie Info -->
        <div class="large-12 columns">
          
        <?php include 'includes/rating.php'; ?>

            <ul>
              <li>Leikstjóri: <?php echo $movie_data['director']; ?></li>
              <li>Flokkur: <?php echo $movie_data['genre']; ?></li>
            </ul>
          	<hr>
          
          <p><?php echo $movie_data['info']; ?></p>
          </div>
        </div>
        <!-- Movie Info END -->

        <!-- Actors -->
        <?php include 'includes/actorTable.inc.php'; ?>
        <!-- Actors END! -->

        <!-- Topp myndir í sama flokki Mobile! -->
        <div class="show-for-medium-down">
          <?php include 'includes/topMovieGenre.inc.php'; ?>
        </div>
        <!-- Topp myndir enda -->

        <!-- Reviews -->
        <?php include 'includes/review.inc.php'; ?>
        <!-- Reviews END -->
      
      </div>
    </div><!-- Main Column END -->

  </div><!-- Main Page Content END -->
 
  <!-- Footer ________________________________________________________________-->
  <?php
        include('includes/overall/footer.php');
   ?>