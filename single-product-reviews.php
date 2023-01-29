<!-- REVIEW FETCH FORM DATABASE -->
<?php

// @see https://www.linkedin.com/in/tapabrata-goswami/

defined('ABSPATH') || exit; // Security check up by wordpress, this call by link to link

$link = $_SERVER['REQUEST_URI'];

$link_products = array('/product/no-rinse-wash/', '/product/pack-of-2-stretch-marks-oil/','/product/pack-of-2-head-to-toe-wash/','/product/pack-of-2-face-body-lotion/', '/product/baby-combo-natural-head-to-toe-wash-face-body-lotion/', '/product/natural-face-body-lotion/', '/product/natural-head-to-toe-wash/','/product/vitamin-c-serum/','/product/stretch-marks-oil/' ,'/product/body-butter/');

$database_products = array ( 'BMNRWB-01', 'BMSMWB-02', 'BMBWWB-02', 'BMBLWB-02', 'BMBWBLC-01', 'BMBLWB-01', 'BMBWWB-01','BBVS-11', 'BMSMWB-01','BMBBWB-01' );

// Database & Server details
$servername = "localhost";
$username = "u526730828_city";
$password = "tapa7866@A";
$database = "u526730828_city";

// conection to database
$database_connection = mysqli_connect($servername, $username, $password, $database);

// Conection check
if (!$database_connection) {
	echo "Server face some problem"; // if failed to connect database then this message is shown
} else {
// output of reviews in single product page 
    for($i=0; $i<10; $i++){
        if($link == $link_products[$i]){
            $data_fetch = "SELECT id, cu_name, cu_city, cu_review FROM `$database_products[$i]`";
		    $data_quer = mysqli_query($database_connection, $data_fetch);
            if (mysqli_num_rows($data_quer) > 0) {
                while ($row = mysqli_fetch_assoc($data_quer)) {
                    echo "<span style = 'font-size:18px; font-weight:500; color:black;'>".$row["cu_name"]."</span>" . ","."   " . $row["cu_city"] . "<br>" . $row["cu_review"]."<br>"."<hr style='width:200px;'>";
                }
            }
        }
    }
mysqli_close($database_connection); //connecction closing
}
?>



<!-- Review taking form Users -->

<?php

$link = htmlspecialchars($_SERVER['REQUEST_URI']);

?>

<section class="review_input">
    <form action="<?php $link  ?>" method="post">
        <input type="text" placeholder="Customer Name*" name="customer_name">
        <input type="text" placeholder="City*" name="city">
        <textarea type="text" placeholder="Review*" name="review" row="8" cols="20"></textarea>
        <input type="submit">
    </form>
</section>


<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Database & Server details
    $servername = "localhost";
    $username = "u526730828_city";
    $password = "tapa7866@A";
    $database = "u526730828_city";

    // Variable declear for taking input
    $customer_name=$city=$cu_review="";

    //Variable initilazing to from varoable
    $customer_name = $_POST['customer_name'];
    $city = $_POST['city'];
    $cu_review = $_POST['review'];

    // conection to database
    $database_connection = mysqli_connect($servername, $username, $password, $database);
    if (!$database_connection) {
        echo "Server face some problem"; //If any reason connection is failed then its called this message
    } else {
        for($i =0 ; $i <10; $i++){
            if($link == $link_products[$i]){
                if(($customer_name != NULL) and($city != NULL) and ($cu_review != NULL)){
                    $data = "INSERT INTO `$database_products[$i]` (`cu_name`, `cu_city`, `cu_review`) VALUES ('$customer_name', '$city', '$cu_review');";
                    $data_pass = mysqli_query($database_connection, $data);
                    if(!$data_pass){
                        echo "Server conection failed!";
                    }else{
                        $link =$_SERVER['REQUEST_URI'];
                        header("Location: $link");
                        exit();
                    }
                }
            }    
        }    
    }
    mysqli_close($database_connection); //Connection closing
}
?>
