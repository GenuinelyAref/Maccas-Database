<?php

if ($count < 1) {

?>
<div class="error">
  Sorry! There are no results that match your search. Please use
  the search box in the side bar to try again.
</div> <!-- end error -->
<?php
}

else {
  do
  {
    ?>

      <!-- Results go here -->
      <div class="results">
        <div class="flex-container">
          <div>
            <span class="sub_heading">
              <?php echo $find_rs['Item']; ?>
            </span>
          </div>
          <?php
              if ($find_rs['Details']!="")
              {
                ?>
                <div>
                  <span class="sub_heading_special">
                    &nbsp;|&nbsp;
                    <?php echo $find_rs['Details'] ?>
                  </span>
                </div>

                <?php
              }
              ?>
      </div> <!-- close flex container div -->

        <p>

          <!-- category -->
          <b>Category</b>:
            <?php echo $find_rs['Category'] ?>

          <!-- line break -->
          <br />
          <br />

          <!-- serving size + unit -->
          <b>Serving size</b>:
            <?php echo $find_rs['Serving Size'];

            if ($find_rs['Serving Unit'] == 1) {
                ?>mL<?php
              }
            else {
              ?>g<?php
            }
               ?>

          <!-- line break -->
          <br />

        </p>

        <table>
          <tr>
            <th>Calories</th>
            <th>Total Fat</th>
            <th>Saturated Fat</th>
            <th>Cholesterol</th>
            <th>Carbohydrates</th>
            <th>Dietary Fiber</th>
            <th>Sugars</th>
            <th>Protein</th>
          </tr>
          <tr>
            <td><?php echo $find_rs['Calories']; ?></td>
            <td><?php echo $find_rs['Total Fat']; ?>g</td>
            <td><?php echo $find_rs['Saturated Fat']; ?>g</td>
            <td><?php echo $find_rs['Cholesterol']; ?>mg</td>
            <td><?php echo $find_rs['Carbohydrates']; ?>g</td>
            <td><?php echo $find_rs['Dietary Fiber']; ?>g</td>
            <td><?php echo $find_rs['Sugars']; ?>g</td>
            <td><?php echo $find_rs['Protein']; ?>g</td>
          </tr>
        </table>


      </div> <!-- close results -->

      <br /> <!-- line break -->



    <?php
  } // end do loop

  while ($find_rs=mysqli_fetch_assoc($find_query));

} // end else loop
?>
