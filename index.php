<!-- Head -->

<?php
    include 'core/init.php';
    include 'includes/overall/header.php';
?>  

<!-- Nav Bar ___________________________________________________________________-->
  
  <?php 
    include('includes/nav.inc.php'); 
  ?>

 <!-- End Nav -->

  <!-- Main Page Content and Sidebar -->
  <div class="row MainRow shadow">
 
    <!-- Main Page____________________________________________________________-->
    <div class="large-9 columns NoPadding">
      <div class="row  RowMargin">
      	<div class="large-12 columns NoPadding">
            

          <div id="slider">

            <div data-orbit data-options="navigation_arrows: false;slide_number: false;resume_on_mouseout: true;timer_speed: 10000;bullets: true;">

              <?php
              // include fyrir sliderinn
              include 'includes/slider.inc.php'; 
              ?>

            </div>
          </div>
      	</div>
      </div>

        <!-- Um síðuna -->
      <div class="row RowMargin">
        <div class="large-12 columns Heading">
          <h5>Um vefsíðuna</h5>
        </div>
        <div class="large-12 columns">
            <p class="paddingTop">Ef þú hefur áhuga á kvikmyndum, missterkum bláum litum eða bara leiðist og hefur ekkert að gera,
            þá er þetta vefsíðan fyrir þig! bDMI er vefsíða sem hýsir allskonar upplýsingar um fjölda kvikmynda, til dæmis, útgáfuár, leikara og stutta lýsingu um myndina.
            En það er ekki allt, ef þú  býrð til aðgang getur þú meira að segja gefið myndum einkunn og einnig skilið eftir umsagnir!
            Á síðunni er einfalt en flott útlit sem gerið það þægilegt að skoða hana og það er ekkert um óþarfa texta eða truflandi auglýsingar, sem hjálpar manni að einbeita sér á því sem maður vill skoða.</p>
        </div>
      </div>
      <!-- topp 10 myndir í random flokkum -->
      <div class="row RowMargin">
        <?php include 'includes/toppRandom.inc.php'; ?>
        <?php include 'includes/toppRandom.inc.php'; ?>
      </div>
    </div>
    <!-- End Main PAge -->
 
 
    <!-- Sidebar_______________________________________________________________ -->
 
    <?php include 'includes/sidebar.inc.php'; ?>
 
    <!-- End Sidebar -->
  </div>
 
  <!-- End Main Page and Sidebar -->
 
 
  <!-- Footer ________________________________________________________________-->
 
  <?php
    include('includes/overall/footer.php');
   ?>