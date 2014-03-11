    <?php 
    // fer á mismunandi síður eftir því hvort notandi er skráður inn eða ekki.
    if (logged_in() === true) {
      include 'includes/widgets/loggedIn.php';
    }
    else {
      include 'includes/widgets/loggedOut.php';     
    } 
    ?>
  </section>
</nav>
