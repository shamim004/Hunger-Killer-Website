<?php
    session_start();
    $database_name = "project_db";
    $con = mysqli_connect("localhost","root","",$database_name);

    if (isset($_POST["add"])){
        if (isset($_SESSION["cart"])){
            $item_array_id = array_column($_SESSION["cart"],"food_id");
            if (!in_array($_GET["id"],$item_array_id)){
                $count = count($_SESSION["cart"]);
                $item_array = array(
                    'food_id' => $_GET["id"],
                    'food_name' => $_POST["hidden_name"],
                    'food_price' => $_POST["hidden_price"],
                    'food_quantity' => $_POST["quantity"],
                );
                $_SESSION["cart"][$count] = $item_array;
                echo '<script>window.location="buffet_king.php"</script>';
            }else{
                echo '<script>alert("Product is already Added to Cart")</script>';
                echo '<script>window.location="buffet_king.php"</script>';
            }
        }else{
            $item_array = array(
                'food_id' => $_GET["id"],
                'food_name' => $_POST["hidden_name"],
                'food_price' => $_POST["hidden_price"],
                'food_quantity' => $_POST["quantity"],
            );
            $_SESSION["cart"][0] = $item_array;
        }
    }

    if (isset($_GET["action"])){
        if ($_GET["action"] == "delete"){
            foreach ($_SESSION["cart"] as $keys => $value){
                if ($value["food_id"] == $_GET["id"]){
                    unset($_SESSION["cart"][$keys]);
                    echo '<script>alert("Food has been Removed...!")</script>';
                    echo '<script>window.location="buffet_king.php"</script>';
                }
            }
        }
    }
?>


<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ordering Menu</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="buffet_king_style.css">

    
</head>
<body>
    <div class="navbar">
      <a href="index.html">Home</a>
      <a href="#About">About</a>
      <a href="#">Restaurants</a>
      <a href="#contact">Contact</a>
      <a href="login.html">Login</a>
    </div>

    <div class="container" style="width: 70%">
        <h2>Buffet KIngs food menu</h2>
        <?php
            $query = "SELECT * FROM buffet_king_menu ORDER BY id ASC ";
            $result = mysqli_query($con,$query);
            if(mysqli_num_rows($result) > 0) {

                while ($row = mysqli_fetch_array($result)) {

                    ?>
                    <div class="col-md-3">

                        <form method="post" action="buffet_king?action=add&id=<?php echo $row["id"]; ?>">

                            <div class="product">
                                <img src="<?php echo $row["foodimage"]; ?>" class="img-responsive">
                                <h5 class="text-info"><?php echo $row["foodname"]; ?></h5>
                                <h5 class="text-danger"><?php echo "price ="." ".$row["price"]; ?></h5>
                                <input type="text" name="quantity" class="form-control" value="1">
                                <input type="hidden" name="hidden_name" value="<?php echo $row["foodname"]; ?>">
                                <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>">
                                <input type="submit" name="add" style="margin-top: 5px;" class="btn btn-success"
                                       value="Add to Cart">
                            </div>
                        </form>
                    </div>
                    <?php
                }
            }
        ?>

        <div style="clear: both"></div>
        <h3 class="title2">Ordering Cart Details</h3>
        <div class="table-responsive">
            <table class="table table-bordered">
            <tr>
                <th width="30%">Food Name</th>
                <th width="10%">Quantity</th>
                <th width="13%">Price Details</th>
                <th width="10%">Total Price</th>
                <th width="17%">Remove Item</th>
            </tr>

            <?php
                if(!empty($_SESSION["cart"])){
                    $total = 0;
                    foreach ($_SESSION["cart"] as $key => $value) {
                        ?>
                        <tr>
                            <td><?php echo $value["food_name"]; ?></td>
                            <td><?php echo $value["food_quantity"]; ?></td>
                            <td>$ <?php echo $value["food_price"]; ?></td>
                            <td>
                                $ <?php echo number_format($value["food_quantity"] * $value["food_price"], 2); ?></td>
                            <td><a href="buffet_king?action=delete&id=<?php echo $value["food_id"]; ?>"><span
                                        class="text-danger">Remove Item</span></a></td>

                        </tr>
                        <?php
                        $total = $total + ($value["food_quantity"] * $value["food_price"]);
                    }
                        ?>
                        <tr>
                            <td colspan="3" align="right"><b> Total </b></td>
                            <th align="right">$ <?php echo number_format($total, 2); ?></th>
                            <td></td>
                        </tr>
                        <?php
                    }
                ?>
            </table>
            <div class="getFoodBtnWrap">
                <button id="getFoodBtn" class="btn btn-success">Checkout</button>
            </div>
        </div>

    </div>


</body>
</html>
