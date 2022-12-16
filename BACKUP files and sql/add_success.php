<?php include("topbit.php");

  // retrieve information
  $ID = $_SESSION['ID'];

  $find_sql = "SELECT * FROM `food_entries`
  JOIN category ON (food_entries.CategoryID = category.CategoryID)
  WHERE `ID` = '$ID'
  ";
  $find_query = mysqli_query($dbconnect, $find_sql);
  $find_rs = mysqli_fetch_assoc($find_query);
  $count = mysqli_num_rows($find_query);

  ?>

      <div class="box main">
          <h2>Success</h2>

          <p>You have submitted the following entry for review and entry into the database.
          <br /> <br />
          <i>Note: your entry will not appear in the database immediately. It will appear within a few working days, after it has been checked first</i>
          <br /> <br />
          To ensure authenticity and factual accuracy, your entry will be checked to make sure the information submitted is accurate. If deemed factually correct, your entry will be entered, otherwise you will be notified where possible. </p>

          <?php
          include ("results.php");
           ?>

      </div> <!-- / main -->

<?php include("bottombit.php") ?>
