<?php
  require "header.php";
 ?>

<main>

  <!-- <h1>Dashbaord</h1> -->

  <?php
    echo '<div class="group">
            <h1>Hello ' . $_SESSION['userUid'] . ', this is your Dashboard</h1>
            <br>
            <h2>View your tracker\'s recent location:</h2>
          </div>';
   ?>

  <div id="map"></div>

  <?php
  $username = $_SESSION['uidUsers'];
    if (isset($_SESSION['userId'])) {
      echo '<section class="dataform">
              <div class="inner">
                <h3 class="subheading">Add a tracker to your account</h3>
                <form action="includes/trackerSub.inc.php" method="post">
                  <input type="text" name="trackeruid" placeholder="Tracker Name...">
                  <select name="trackerType">
                    <option value="standard">Standard</option>
                    <option value="plus">Plus</option>
                  </select>
                  <button type="submit" name="tracker-submit">Submit</button>
                </form>
              </div>
            </section>';
    }
    else {
      echo '<form action="includes/login.inc.php" method="post">
        <input type="text" name="mailuid" placeholder="Username/E-mail...">
        <input type="password" name="pwd" placeholder="Password...">
        <button type="submit" name="login-submit">Login</button>
      </form>
      <a href="signup.php">Sign Up</a>';

    }
   ?>

   <?php
    if (isset($_SESSION['userId'])) {
     /* Database connection settings */
     	$host = 'db772969286.hosting-data.io';
     	$user = 'db772969286';
     	$pass = 'dbo772969286';
     	$db = 'motherbird';
     	$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);

      	$coordinates = array();
      	$latitudes = array();
      	$longitudes = array();

     	// Select all the rows in the markers table
      // Select from the location and tracker joined table only where the userID = the current session user ID
      $sql = "SELECT * FROM trackers INNER JOIN location ON trackers.idTrackers = location.idTrackers
      WHERE idUsers = '".$_SESSION['userId']."'";
      //Just select the location table as a whole
     	$query = "SELECT  `locationLatitude`, `locationLongitude` FROM `location` ";
     	$result = $mysqli->query($sql) or die('data selection for google map failed: ' . $mysqli->error);

      	while ($row = mysqli_fetch_array($result)) {

     		$latitudes[] = $row['locationLatitude'];
     		$longitudes[] = $row['locationLongitude'];
     		$coordinates[] = 'new google.maps.LatLng(' . $row['locationLatitude'] .','. $row['locationLongitude'] .'),';

      }



     	//remove the comaa ',' from last coordinate
     	$lastcount = count($coordinates)-1;
     	$coordinates[$lastcount] = trim($coordinates[$lastcount], ",");
}
    ?>





<script>
			function initMap() {
			  var mapOptions = {
			    zoom: 15,
			    center: {<?php echo'lat:'. $latitudes[0] .', lng:'. $longitudes[0] ;?>}, //{lat: --- , lng: ....}
			    mapTypeId: google.maps.MapTypeId.SATELITE
			  };

			  var map = new google.maps.Map(document.getElementById('map'),mapOptions);

			  var RouteCoordinates = [
			  	<?php
			  		$i = 0;
					while ($i < count($coordinates)) {
						echo $coordinates[$i];
						$i++;
					}
			  	?>
			  ];

			  var RoutePath = new google.maps.Polyline({
			    path: RouteCoordinates,
			    geodesic: true,
			    strokeColor: '#1100FF',
			    strokeOpacity: 1.0,
			    strokeWeight: 10
			  });

			  mark = '';
			  flag = '';

			  startPoint = {<?php echo'lat:'. $latitudes[0] .', lng:'. $longitudes[0] ;?>};
			  endPoint = {<?php echo'lat:'.$latitudes[$lastcount] .', lng:'. $longitudes[$lastcount] ;?>};

			  var marker = new google.maps.Marker({
			  	position: startPoint,
			  	map: map,
			  	icon: mark,
			  	title:"Start point!",
			  	animation: google.maps.Animation.DROP
			  });

			  var marker = new google.maps.Marker({
			  position: endPoint,
			   map: map,
			   icon: flag,
			   title:"End point!",
			   animation: google.maps.Animation.BOUNCE
			});

			  RoutePath.setMap(map);
			}

			google.maps.event.addDomListener(window, 'load', initialize);
    	</script>

<script async defer
 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnIQWQLpUEaA_Il4NqNVACyVIJsm_DzHg&callback=initMap">
 </script>

</main>


 <?php
   require "footer.php"
  ?>
