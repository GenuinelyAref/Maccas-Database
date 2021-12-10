<?php include("topbit.php");

// Get Category list from database
$category_sql="SELECT * FROM `category` ORDER BY `category`.`Category` ASC";
$category_query=mysqli_query($dbconnect, $category_sql);
$category_rs=mysqli_fetch_assoc($category_query);

$item = "";
$details = "";
$serving_size = "";
$serving_unit = 0;
$categoryID = "";
$calories = "";
$total_fat = "";
$saturated_fat = "";
$cholesterol = "";
$carbohydrates = "";
$dietary_fiber = "";
$sugars = "";
$protein = "";

$has_errors = "no";

// set up error field colours / visibility (no errors at first)
$item_error = "no-error";
$category_error = "no-error";
$serving_size_error = "no-error";
$calories_error = "no-error";
$total_fat_error = "no-error";
$saturated_fat_error = "no-error";
$cholesterol_error = "no-error";
$carbohydrates_error = "no-error";
$dietary_fiber_error = "no-error";
$sugars_error = "no-error";
$protein_error = "no-error";

$item_field = "form-ok";
$category_field = "form-ok";
$serving_size_field = "form-ok";
$calories_field = "form-ok";
$total_fat_field = "form-ok";
$saturated_fat_field = "form-ok";
$cholesterol_field = "form-ok";
$carbohydrates_field = "form-ok";
$dietary_fiber_field = "form-ok";
$sugars_field = "form-ok";
$protein_field = "form-ok";


// code below executes when the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // get values from form
    $item = mysqli_real_escape_string($dbconnect, $_POST['item']);
    $details = mysqli_real_escape_string($dbconnect, $_POST['details']);

    $categoryID = mysqli_real_escape_string($dbconnect, $_POST['category']);

    // if genreID is given, record value so it isn't lost if there are errors
    if ($categoryID != "") {
      $categoryitem_sql = "SELECT * FROM `category` WHERE `categoryID` = $categoryID";
      $categoryitem_query = mysqli_query($dbconnect, $categoryitem_sql);
      $categoryitem_rs = mysqli_fetch_assoc($categoryitem_query);

      $category = $categoryitem_rs['Category'];

    } // end of category safe-keeping if statement

    $serving_size = mysqli_real_escape_string($dbconnect, $_POST['serving_size']);
    $serving_unit = mysqli_real_escape_string($dbconnect, $_POST['serving_unit']);
    $calories = mysqli_real_escape_string($dbconnect, $_POST['calories']);
    $total_fat = mysqli_real_escape_string($dbconnect, $_POST['total_fat']);
    $saturated_fat = mysqli_real_escape_string($dbconnect, $_POST['saturated_fat']);
    $cholesterol = mysqli_real_escape_string($dbconnect, $_POST['cholesterol']);
    $carbohydrates = mysqli_real_escape_string($dbconnect, $_POST['carbohydrates']);
    $dietary_fiber = mysqli_real_escape_string($dbconnect, $_POST['dietary_fiber']);
    $sugars = mysqli_real_escape_string($dbconnect, $_POST['sugars']);
    $protein = mysqli_real_escape_string($dbconnect, $_POST['protein']);


    // error checking starts here

    // check item name is not blank
    if ($item == "") {
      $has_errors = "yes";
      $item_error = "error-text";
      $item_field = "form-error";
    }

    // Check category is not blank
    if ($categoryID == "") {
      $has_errors = "yes";
      $category_error = "error-text";
      $category_field = "form-error";
    }

    // check that serving size is a number bigger than zero
    if (!is_numeric($serving_size) || $serving_size <= 0) {
      $has_errors = "yes";
      $serving_size_error = "error-text";
      $serving_size_field = "form-error";
    }

    // check that calories is a number bigger than or equal to zero
    if (!is_numeric($calories) || $calories < 0 ) {
      $has_errors = "yes";
      $calories_error = "error-text";
      $calories_field = "form-error";
    }

    // check that total fat is a number bigger than or equal to zero
    if (!is_numeric($total_fat) || $total_fat < 0 ) {
      $has_errors = "yes";
      $total_fat_error = "error-text";
      $total_fat_field = "form-error";
    }

    // check that saturated fat is a number bigger than or equal to zero
    if (!is_numeric($saturated_fat) || $saturated_fat < 0 ) {
      $has_errors = "yes";
      $saturated_fat_error = "error-text";
      $saturated_fat_field = "form-error";
    }

    // check that cholesterol is a number bigger than or equal to zero
    if (!is_numeric($cholesterol) || $cholesterol < 0 ) {
      $has_errors = "yes";
      $cholesterol_error = "error-text";
      $cholesterol_field = "form-error";
    }

    // check that carbohydrates is a number bigger than or equal to zero
    if (!is_numeric($carbohydrates) || $carbohydrates < 0 ) {
      $has_errors = "yes";
      $carbohydrates_error = "error-text";
      $carbohydrates_field = "form-error";
    }

    // check that dietary fiber is a number bigger than or equal to zero
    if (!is_numeric($dietary_fiber) || $dietary_fiber < 0 ) {
      $has_errors = "yes";
      $dietary_fiber_error = "error-text";
      $dietary_fiber_field = "form-error";
    }

    // check that sugars is a number bigger than or equal to zero
    if (!is_numeric($sugars) || $sugars < 0 ) {
      $has_errors = "yes";
      $sugars_error = "error-text";
      $sugars_field = "form-error";
    }

    // check that protein is a number bigger than or equal to zero
    if (!is_numeric($protein) || $protein < 0 ) {
      $has_errors = "yes";
      $protein_error = "error-text";
      $protein_field = "form-error";
    }


    // if there are no errors...
    if ($has_errors == "no") {

      // go to success page
      header('Location: add_success.php');

      // add entry to database
      $addentry_sql = "INSERT INTO `food_entries` (`ID`, `Item`, `Details`, `CategoryID`, `Serving Size`, `Serving Unit`, `Calories`, `Total Fat`, `Saturated Fat`, `Cholesterol`, `Carbohydrates`, `Dietary Fiber`, `Sugars`, `Protein`) VALUES (NULL, '$item', '$details',
         '$categoryID', '$serving_size', '$serving_unit', '$calories', '$total_fat', '$saturated_fat', '$cholesterol', '$carbohydrates', '$dietary_fiber', '$sugars', '$protein');";
      $addentry_query = mysqli_query($dbconnect, $addentry_sql);

      // Get ID for next page
      $getid_sql = "SELECT * FROM `food_entries` WHERE
      `Item` LIKE '$item'
      AND `Details` LIKE '$details'
      AND `CategoryID` = '$categoryID'
      AND `Serving Size` = '$serving_size'
      AND `Serving Unit` = '$serving_unit'
      AND `Calories` = '$calories'
      AND `Total Fat` = '$total_fat'
      AND `Saturated Fat` = '$saturated_fat'
      AND `Cholesterol` = '$cholesterol'
      AND `Carbohydrates` = '$carbohydrates'
      AND `Dietary Fiber` = '$dietary_fiber'
      AND `Sugars` = '$sugars'
      AND `Protein` = '$protein'
      ";
      $getid_query = mysqli_query($dbconnect, $getid_sql);
      $getid_rs = mysqli_fetch_assoc($getid_query);

      $ID = $getid_rs['ID'];
      $_SESSION['ID']=$ID;

      } // end of no errors if statement

} // end of execution if loop

?>

        <div class="box main">

          <div class="add-entry">
            <h2>Add an Entry (food/drink item)</h2>

            <form method="post" enctype="multipart/form-data"
                action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                <!-- Item name -->
                <div class="<?php echo $item_error; ?>">
                    Please fill in the 'Item Name' field
                </div>
                <input maxlength="200" class="add-field <?php echo $item_field; ?>" type="text" name="item"
                value="<?php echo $item; ?>" placeholder="Item Name (required) ..."/>


                <!-- Details -->
                <input class="add-field" maxlength="50" type="text" name="details" value="<?php echo $details; ?>" placeholder="Details (optional) ..."/>


                <!-- Category -->
                <div class="<?php echo $category_error; ?>">
                    Please choose a category
                </div>
                <select class="adv <?php echo $category_field; ?>" name="category">
                  <!-- first / selected option -->

                  <?php
                  if ($categoryID == "") {
                    ?>
                    <option value="" selected>Category (Choose something) ...
                    </option>
                    <?php
                  }
                  else {
                    ?>
                    <option value="<?php echo $categoryID; ?>" selected>
                    <?php echo $category; ?></option> <?php
                  }
                  ?>

                  <!-- get options from database -->
                  <?php
                  do {
                    ?>
                      <option value="<?php echo $category_rs['CategoryID']; ?>">
                      <?php echo $category_rs['Category']; ?></option>
                    <?php
                  } // end category do loop

                  while ($category_rs=mysqli_fetch_assoc($category_query))
                ?>

                </select>


                <!-- Serving Size -->
                <div class="<?php echo $serving_size_error; ?>">
                    Serving size has to be bigger than 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="add-field <?php echo $serving_size_field; ?>" type="text" name="serving_size"
                value="<?php echo $serving_size; ?>" placeholder="Serving Size (number only)"/>

                <!-- line break -->
                    <br /><br />


                <!-- Serving Unit -->
                <div>
                    <b>Serving Unit: </b>
                    <!-- defaults to 'g' -->
                    <!-- note: value in database is boolean, so use 1's and 0's -->
                    <?php
                    if ($serving_unit == 0) {
                      // default to 'g' (boolean value of 0)
                      ?>
                      <input type="radio" name="serving_unit" value="1"/> mL
                      <input type="radio" name="serving_unit" value="0" checked="checked"/> g
                      <?php
                    } // end serving unit if statement
                    else {
                      ?>
                      <input type="radio" name="serving_unit" value="1" checked="checked"/> mL
                      <input type="radio" name="serving_unit" value="0" /> g
                      <?php
                    } // end serving unit else statement
                    ?>
                </div> <!-- close serving unit radio button div -->


                <!-- line break -->
                    <br />


                <!-- Calories -->
                <div class="<?php echo $calories_error; ?>">
                    Calories has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="add-field <?php echo $calories_field; ?>" type="text" name="calories"
                value="<?php echo $calories; ?>" placeholder="Calories"/>



                <!-- Total Fat -->
                <div class="<?php echo $total_fat_error; ?>">
                    Total Fat has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $total_fat_field; ?>" type="text" name="total_fat"
                value="<?php echo $total_fat; ?>" placeholder="Total Fat"/><span class="min_max_span">g</span>


                <!-- Saturated Fat -->
                <div class="<?php echo $saturated_fat_error; ?>">
                    Saturated Fat has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $saturated_fat_field; ?>" type="text" name="saturated_fat"
                value="<?php echo $saturated_fat; ?>" placeholder="Saturated Fat"/><span class="min_max_span">g</span>


                <!-- Cholesterol -->
                <div class="<?php echo $cholesterol_error; ?>">
                    Cholesterol has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $cholesterol_field; ?>" type="text" name="cholesterol"
                value="<?php echo $cholesterol; ?>" placeholder="Cholesterol"/><span class="min_max_span">mg</span>


                <!-- Carbohydrates -->
                <div class="<?php echo $carbohydrates_error; ?>">
                    Carbohydrates has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $carbohydrates_field; ?>" type="text" name="carbohydrates"
                value="<?php echo $carbohydrates; ?>" placeholder="Carbohydrates"/><span class="min_max_span">g</span>


                <!-- Dietary Fiber -->
                <div class="<?php echo $dietary_fiber_error; ?>">
                    Dietary Fiber has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $dietary_fiber_field; ?>" type="text" name="dietary_fiber"
                value="<?php echo $dietary_fiber; ?>" placeholder="Dietary Fiber"/><span class="min_max_span">g</span>


                <!-- Sugars -->
                <div class="<?php echo $sugars_error; ?>">
                    Sugars has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $sugars_field; ?>" type="text" name="sugars"
                value="<?php echo $sugars; ?>" placeholder="Sugars"/><span class="min_max_span">g</span>


                <!-- Protein -->
                <div class="<?php echo $protein_error; ?>">
                    Protein has to be bigger than or equal to 0 (2dp max recommended)
                </div>
                <input maxlength="7" class="min_max add-field <?php echo $protein_field; ?>" type="text" name="protein"
                value="<?php echo $protein; ?>" placeholder="Protein"/><span class="min_max_span">g</span>


                <!-- Submit button -->
                <p>
                    <input class="submit advanced-button special_search" type="submit"
                    value="Submit" />
                </p>

            </form>


          </div> <!-- close add-entry div -->
        </div> <!-- / main -->

<?php include("bottombit.php") ?>
