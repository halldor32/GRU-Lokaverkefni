<div class="TitleRating">
          	<ul>
            <div class="Right hide-for-small" id="notLoggedIn"><span><?php if (logged_in() === true) { if (rated_before($user_data['userID'], $movie_data['movieID'], $pdo) === true) { echo 'Þú gafst þessari mynd: ' . rating_from_user($user_data['userID'], $movie_data['movieID'], $pdo) . '/10'; } else { echo 'Endilega gefðu þessari mynd einkunn'; } } else { echo 'Skráðu þig inn til að gefa einkunn'; } ?></span></div>
          		<li><h3 class="inline"><?php echo $movie_data['name']; ?></h3></li>
              <!--  -->
              <li class="Right" id="inline">
                <!-- Rating System -->

                      <?php if (logged_in() === true) { ?>
                        <div id="check"></div>
                        <?php } ?>
                       
                      
                        <div id="rating hide-for-small">
                        <script>
                          spge="<?php echo $movie_data['movieID'] ?>";

                          // Hérna bý ég til stjörnunar og set id og data-value á þær
                          var rating;
                          rating=0.5;
                            for (var i = 0; i != 20; i++) {
                              if (i%2==0) {
                                document.write('<a title='+rating+' id="rating" class="inline hide-for-small" href="movie.php?rate='+rating+'&movieID='+spge+'"><img id="'+(i+1)+'" class="star s_left" src="img/star_empty_left.png"></a>');
                              }
                              else {
                                document.write("<a title="+rating+" id='rating' class='inline hide-for-small' href='movie.php?rate="+rating+"&movieID="+spge+"'><img id='"+(i+1)+"' class='star s_right' src='img/star_empty_right.png'></a>");
                              }
                              rating=rating+0.5;
                            }
                          </script>
                        </div>
                        <p class="inline" id="goDown"><?php echo round($movie_data['rating'],1); ?></p>

              </li>
          	</ul>
          </div>





          <div class="TitleRating">
      <ul>
        <div class="Right hide-for-small" id="notLoggedIn"><span><?php
     
          if (logged_in() === true)
          {
           if (rated_before($user_data['userID'], $movie_data['movieID'], $pdo) === true)
           {
            echo 'Þú gafst þessari mynd: ' . rating_from_user($user_data['userID'], $movie_data['movieID'], $pdo) . '/10';
          }
          else
          {
            echo 'Endilega gefðu þessari mynd einkunn';
          }
        }
        else
        {
         echo 'Skráðu þig inn til að gefa einkunn';
       } ?></span></div>
       <li><h3 class="inline"><?php
        echo $movie_data['name']; ?></h3></li>
        <!--  -->
        <li class="Right" id="inline">
          <!-- Rating System -->
     
          <?php
     
          if (logged_in() === true)
           { ?>
         <div id="check"></div>
         <?php
       } ?>
     
     
       <div id="hide-for-small">
        <?php
          $rating = 0.5;
          for($i = 1; $i <= 20; $i++) {
            $img = ($i%2 == 0) ? array('star_empty_right.png','star_right.png') : array('star_empty_left.png','star_left.png');
            ?>
            <a title="<?php echo $rating ?> " id="rating" class="inline hide-for-small" href="movie.php?rate=<?php echo $rating; ?>&movieID=<?php echo $movie_data['movieID'] ?>">
              <img class="star s_left" data-empty-src="<?php echo $img[0] ?>"  data-src="<?php echo $img[1] ?>'" src="img/<?php echo $rating <= $movie_data['rating'] ? $img[1] : $img[0] ?>" />
            </a>
            <?php
            $rating += 0.5;
          }
        ?>
        </div>
        <p class="inline" id="goDown"><?php
          echo round($movie_data['rating'], 1); ?></p>
     
        </li>
      </ul>
    </div>