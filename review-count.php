<!-- This part of code count Review in every product, Start! -->

<?php

// @see https://www.linkedin.com/in/tapabrata-goswami/

$link = $_SERVER['REQUEST_URI'];

$count = 0;

$link_products = array('/product/no-rinse-wash/', '/product/pack-of-2-stretch-marks-oil/', '/product/pack-of-2-head-to-toe-wash/', '/product/pack-of-2-face-body-lotion/', '/product/baby-combo-natural-head-to-toe-wash-face-body-lotion/', '/product/natural-face-body-lotion/', '/product/natural-head-to-toe-wash/', '/product/vitamin-c-serum/', '/product/stretch-marks-oil/', '/product/body-butter/');

$database_products = array('BMNRWB-01', 'BMSMWB-02', 'BMBWWB-02', 'BMBLWB-02', 'BMBWBLC-01', 'BMBLWB-01', 'BMBWWB-01', 'BBVS-11', 'BMSMWB-01', 'BMBBWB-01');

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
    for ($i = 0; $i < 10; $i++) {
        if ($link == $link_products[$i]) {
            $data_fetch = "SELECT id, cu_name, cu_city, cu_review FROM `$database_products[$i]`";
            $data_quer = mysqli_query($database_connection, $data_fetch);
            if (mysqli_num_rows($data_quer) > 0) {
                while ($row = mysqli_fetch_assoc($data_quer)) {
                    $count = $count + 1;
                }
            }
        }
    }
    mysqli_close($database_connection);
}
?>
<?php echo '<span style = "background-color:#fb4b7a; color: #ffffff; border-radius: 20px; padding:2px 3px 2px 3px;">' . $count . '</span>' ?>
</a>
</li>

<!-- This part of code count Review in every product, End! -->