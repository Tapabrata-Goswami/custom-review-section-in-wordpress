<!-- REVIEW FETCH FORM DATABASE -->
<script src="https://kit.fontawesome.com/6b016eb5c2.js" crossorigin="anonymous"></script>
<?php

$link = $_SERVER['REQUEST_URI'];
$link1 = '/product/stretch-marks-oil/';
$link2 = '/product/no-rinse-wash/';

//   echo $link;

defined('ABSPATH') || exit;

$servername = "localhost";
$username = "u526730828_city";
$password = "tapa7866@A";
$database = "u526730828_city";

// conection to database

$database_connection = mysqli_connect($servername, $username, $password, $database);

if (!$database_connection) {
	echo "Server face some problem";
} else {
	if ($link == $link2) {
		$data_fetch = "SELECT id, cu_name, cu_city, cu_review FROM `BMNRWB-01`";
		$data_quer = mysqli_query($database_connection, $data_fetch);

		if (mysqli_num_rows($data_quer) > 0) {
			// OUTPUT DATA OF EACH ROW
			while ($row = mysqli_fetch_assoc($data_quer)) {
				echo $row["cu_name"] ."," . "  " . $row["cu_city"] . "<br>" . $row["cu_review"]."<br>";
			}
		} else {
			echo "0 results";
		}
	} elseif ($link == $link1) {

		$data_fetch = "SELECT id, cu_name, cu_city, cu_review FROM `BMSMWB-01`";
		$data_quer = mysqli_query($database_connection, $data_fetch);

		if (mysqli_num_rows($data_quer) > 0) {
			// OUTPUT DATA OF EACH ROW
			while ($row = mysqli_fetch_assoc($data_quer)) {
				echo "<span style = 'font-size:18px; font-weight:500; color:black;'>".$row["cu_name"]."</span>" . ","."   " . $row["cu_city"] . "<br>" . $row["cu_review"]."<br>"."<hr style='width:200px;'>";
			}
		} else {
			echo "0 results";
		}
	}

	mysqli_close($database_connection);
}
?>






<!-- INPUT REVIEW -->

<?php

$link = htmlspecialchars($_SERVER['PHP_SELF']);
// echo $link;
?>

<section class="review_input">
    <form action="<?php $link  ?>" method="post">
        <input type="text" placeholder="Customer Name" name="customer_name">
        <input type="text" placeholder="City" name="city">
        <textarea type="text" placeholder="review" name="review" row="8" cols="20"></textarea>
        <input type="submit">
    </form>
</section>


<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "localhost";
    $username = "u526730828_city";
    $password = "tapa7866@A";
    $database = "u526730828_city";

    $customer_name=$city=$cu_review="";

    $customer_name = $_POST['customer_name'];
    $city = $_POST['city'];
    $cu_review = $_POST['review'];

    // conection to database
    $database_connection = mysqli_connect($servername, $username, $password, $database);
    if (!$database_connection) {
        echo "Server face some problem";
    } else {
        $data = "INSERT INTO `BMSMWB-01` (`cu_name`, `cu_city`, `cu_review`) VALUES ('$customer_name', '$city', '$cu_review');";

        $data_pass = mysqli_query($database_connection, $data);
        if(!$data_pass){
            echo "Server conection failed!";
        }else{
            $link =$_SERVER['REQUEST_URI'];
            header("Location: $link");
            exit();

        }
    }

    mysqli_close($database_connection);
}
?>
