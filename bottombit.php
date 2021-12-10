
        <div class="box side">

          <h2><a href="addentry.php" class="side">Add an entry</a> |
             <a class="side" href="showall.php">Show All</a></h2>

             <form class="searchform" method="post"
             action="item.php" enctype="multipart/form-data">
                <input  class="search" type="text" name="item_category" size="25"
                value="" required placeholder="Item Name / Category..."/>

                <input class="submit special_search" type="submit" name="find_item_name"
                value="&#xf002;"/>
             </form>

             <form class="searchform" method="post"
             action="quicksearch.php" enctype="multipart/form-data">
                <input class="submit quicksearch special_search" type="submit" name="quicksearch"
                value="Less than 200 calories &nbsp; &#xf002;" />
             </form>

             <br />
             <hr />
             <br />

             <div class="advanced-frame">
                <h2 align="middle">Advanced Search</h2>



                <form class="searchform" method="post" action="advanced.php"
                enctype="multipart/form-data">

                    <input class="adv" type="text" name="item" size="40"
                    value="" placeholder="Item Name ..."/>

                    <!-- Category Dropdown -->
                    <select class="search adv" name="category">

                        <option value="" selected>Category...</option>


                        <!-- get options from database -->
                        <?php
                          $category_sql="SELECT * FROM `category` ORDER BY `category`.`Category` ASC";
                          $category_query=mysqli_query($dbconnect, $category_sql);
                          $category_rs=mysqli_fetch_assoc($category_query);

                          do {
                            ?>
                              <option value="<?php echo $category_rs['Category']; ?>">
                              <?php echo $category_rs['Category']; ?></option>
                            <?php
                          } // end genre do loop

                          while ($category_rs=mysqli_fetch_assoc($category_query))
                        ?>

                    </select>

                    <!-- line break -->
                    <br /><br />

                    <!-- Serving Size -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Serving Size:</b>
                          <br />
                        </div> <!-- close serving size label div-->

                        <div>
                          <input name="serving_size_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span"></span>
                        </div> <!-- close serving size drop down div-->

                        <div>
                          <input name="serving_size_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span"></span>
                        </div> <!-- close serving size amount div-->

                    </div> <!-- close serving size div -->

                    <!-- Serving Unit -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Serving Unit:</b>
                          <br />
                        </div> <!-- close calories label div-->

                        <!-- defaults to 'mL' -->

                        <div>
                          <input type="radio" name="serving_unit" value="1"/> mL
                        </div> <!-- close mL option div -->

                        <div>
                          <input type="radio" name="serving_unit" value="0" checked="checked"/> g
                        </div> <!-- close g option div -->

                    </div> <!-- close serving unit radio button div -->

                    <!-- line break -->
                    <br />

                    <!-- Calories -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Calories:</b>
                          <br />
                        </div> <!-- close calories label div-->

                        <div>
                          <input name="calories_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span"></span>
                        </div> <!-- close calories min div-->

                        <div>
                          <input name="calories_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span"></span>
                        </div> <!-- close calories max div-->

                    </div> <!-- close calories div -->

                    <!-- line break -->
                    <br />

                    <!-- Total Fat -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Total Fat:</b>
                          <br />
                        </div> <!-- close total fat label div-->

                        <div>
                          <input name="total_fat_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close total fat min div-->

                        <div>
                          <input name="total_fat_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close total fat max div-->

                    </div> <!-- close total fat div -->

                    <!-- line break -->
                    <br />

                    <!-- Saturated Fat -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Saturated Fat:</b>
                          <br />
                        </div> <!-- close saturated fat label div-->

                        <div>
                          <input name="saturated_fat_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close saturated fat min div-->

                        <div>
                          <input name="saturated_fat_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close saturated fat max div-->

                    </div> <!-- close saturated fat div -->

                    <!-- line break -->
                    <br />

                    <!-- Cholesterol -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Cholesterol:</b>
                          <br />
                        </div> <!-- close cholesterol label div-->

                        <div>
                          <input name="cholesterol_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">mg</span>
                        </div> <!-- close cholesterol min div-->

                        <div>
                          <input name="cholesterol_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">mg</span>
                        </div> <!-- close cholesterol max div-->

                    </div> <!-- close cholesterol div -->

                    <!-- line break -->
                    <br />

                    <!-- Carbohydrates -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Carbohydrates:</b>
                          <br />
                        </div> <!-- close carbohydrates label div-->

                        <div>
                          <input name="carbohydrates_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close carbohydrates min div-->

                        <div>
                          <input name="carbohydrates_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close carbohydrates max div-->

                    </div> <!-- close carbohydrates div -->

                    <!-- line break -->
                    <br />

                    <!-- Dietary Fiber -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Dietary Fiber:</b>
                          <br />
                        </div> <!-- close dietary fiber label div-->

                        <div>
                          <input name="dietary_fiber_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close dietary fiber min div-->

                        <div>
                          <input name="dietary_fiber_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close dietary fiber max div-->

                    </div> <!-- close dietary fiber div -->

                    <!-- line break -->
                    <br />

                    <!-- Sugars -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Sugars:</b>
                          <br />
                        </div> <!-- close sugars label div-->

                        <div>
                          <input name="sugars_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close sugars min div-->

                        <div>
                          <input name="sugars_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close sugars max div-->

                    </div> <!-- close sugars div -->

                    <!-- line break -->
                    <br />

                    <!-- Protein -->
                    <div class="flex-container">
                        <div class="adv-text">
                          <b>Protein:</b>
                          <br />
                        </div> <!-- close protein label div-->

                        <div>
                          <input name="protein_min" class="min_max search adv adv-cost" width="20px" placeholder="Min"></input><span class="min_max_span">g</span>
                        </div> <!-- close protein min div-->

                        <div>
                          <input name="protein_max" class="min_max search adv adv-cost" width="20px" placeholder="Max"></input><span class="min_max_span">g</span>
                        </div> <!-- close protein max div-->

                    </div> <!-- close protein div -->

                    <br />
                    <br />

                    <!-- Search button / submit query -->
                    <input class="submit advanced-button special_search" type="submit"
                    name="advanced" value="Search &nbsp; &#xf002;" />

                    <!-- line break for visual appeal -->
                    <br />


                  </form>

        </div> <!-- advanced frame -->


        </div> <!-- / side bar -->

        <div class="box footer">
            CC Aref Osman 2021
        </div> <!-- / footer -->


    </div> <!-- / wrapper -->


</body>
