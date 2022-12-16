<?php include("topbit.php");

      $item = mysqli_real_escape_string($dbconnect, $_POST['item']);
      $category = mysqli_real_escape_string($dbconnect, $_POST['category']);
      $serving_size_min = mysqli_real_escape_string($dbconnect, $_POST['serving_size_min']);
      $serving_size_max = mysqli_real_escape_string($dbconnect, $_POST['serving_size_max']);
      $serving_unit = mysqli_real_escape_string($dbconnect, $_POST['serving_unit']);
      $calories_min = mysqli_real_escape_string($dbconnect, $_POST['calories_min']);
      $calories_max = mysqli_real_escape_string($dbconnect, $_POST['calories_max']);
      $total_fat_min = mysqli_real_escape_string($dbconnect, $_POST['total_fat_min']);
      $total_fat_max = mysqli_real_escape_string($dbconnect, $_POST['total_fat_max']);
      $saturated_fat_min = mysqli_real_escape_string($dbconnect, $_POST['saturated_fat_min']);
      $saturated_fat_max = mysqli_real_escape_string($dbconnect, $_POST['saturated_fat_max']);
      $cholesterol_min = mysqli_real_escape_string($dbconnect, $_POST['cholesterol_min']);
      $cholesterol_max = mysqli_real_escape_string($dbconnect, $_POST['cholesterol_max']);
      $carbohydrates_min = mysqli_real_escape_string($dbconnect, $_POST['carbohydrates_min']);
      $carbohydrates_max = mysqli_real_escape_string($dbconnect, $_POST['carbohydrates_max']);
      $dietary_fiber_min = mysqli_real_escape_string($dbconnect, $_POST['dietary_fiber_min']);
      $dietary_fiber_max = mysqli_real_escape_string($dbconnect, $_POST['dietary_fiber_max']);
      $sugars_min = mysqli_real_escape_string($dbconnect, $_POST['sugars_min']);
      $sugars_max = mysqli_real_escape_string($dbconnect, $_POST['sugars_max']);
      $protein_min = mysqli_real_escape_string($dbconnect, $_POST['protein_min']);
      $protein_max = mysqli_real_escape_string($dbconnect, $_POST['protein_max']);

      // serving size
      if ($serving_size_min=="") {
        $serving_size_min = 0;
      }

      if ($serving_size_max=="") {
        $serving_size_max = 10000;
      }

      // calories
      if ($calories_min=="") {
        $calories_min = 0;
      }

      if ($calories_max=="") {
        $calories_max = 10000;
      }

      // total fat
      if ($total_fat_min=="") {
        $total_fat_min = 0;
      }

      if ($total_fat_max=="") {
        $total_fat_max = 10000;
      }

      // saturated fat
      if ($saturated_fat_min=="") {
        $saturated_fat_min = 0;
      }

      if ($saturated_fat_max=="") {
        $saturated_fat_max = 10000;
      }

      // cholesterol
      if ($cholesterol_min=="") {
        $cholesterol_min = 0;
      }

      if ($cholesterol_max=="") {
        $cholesterol_max = 10000;
      }

      // carbohydrates
      if ($carbohydrates_min=="") {
        $carbohydrates_min = 0;
      }

      if ($carbohydrates_max=="") {
        $carbohydrates_max = 10000;
      }

      // dietary fiber
      if ($dietary_fiber_min=="") {
        $dietary_fiber_min = 0;
      }

      if ($dietary_fiber_max=="") {
        $dietary_fiber_max = 10000;
      }

      // sugars
      if ($sugars_min=="") {
        $sugars_min = 0;
      }

      if ($sugars_max=="") {
        $sugars_max = 10000;
      }

      // protein
      if ($protein_min=="") {
        $protein_min = 0;
      }

      if ($protein_max=="") {
        $protein_max = 10000;
      }


      $find_sql = "SELECT * FROM `food_details`
      JOIN category ON (food_details.CategoryID = category.CategoryID)
      WHERE `Item` LIKE '%$item%'
      AND `Category` LIKE '%$category%'
      AND '$serving_size_min' <= `Serving Size`
      AND `Serving Size` <= '$serving_size_max'
      AND `Serving Unit` = '$serving_unit'
      AND '$calories_min' <= `Calories`
      AND `Calories` <= '$calories_max'
      AND '$total_fat_min' <= `Total Fat`
      AND `Total Fat` <= '$total_fat_max'
      AND '$saturated_fat_min' <= `Saturated Fat`
      AND `Saturated Fat` <= '$saturated_fat_max'
      AND '$cholesterol_min' <= `Cholesterol`
      AND `Cholesterol` <= '$cholesterol_max'
      AND '$carbohydrates_min' <= `Carbohydrates`
      AND `Carbohydrates` <= '$carbohydrates_max'
      AND '$dietary_fiber_min' <= `Dietary Fiber`
      AND `Dietary Fiber` <= '$dietary_fiber_max'
      AND '$sugars_min' <= `Sugars`
      AND `Sugars` <= '$sugars_max'
      AND '$protein_min' <= `Protein`
      AND `Protein` <= '$protein_max'

      ";
      $find_query = mysqli_query($dbconnect, $find_sql);
      $find_rs = mysqli_fetch_assoc($find_query);
      $count = mysqli_num_rows($find_query);


?>

  <div class="box main">
    <h2>Advanced Search</h2>

    <?php include "results.php"; ?>

  </div> <!-- / main -->

<?php include("bottombit.php") ?>
