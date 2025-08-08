<?php 
    include 'connection.php';
    session_start();
    $user_id = $_SESSION['user_id'];
    if (!isset($user_id)) {
        header('location:login.php');
    }
    if(isset($_POST['logout'])){
        session_destroy();
        header("location: login.php");
    }
    if (isset($_POST['submit-btn'])) {
        $name = mysqli_real_escape_string($conn, $_POST['name']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $number = mysqli_real_escape_string($conn, $_POST['number']);
        $message = mysqli_real_escape_string($conn, $_POST['message']);

        $select_message = mysqli_query($conn, "SELECT * FROM `message` WHERE name= '$name' AND email='$email' AND $number = '$number' AND message= '$message'") or die('query failed');
        if (mysqli_num_rows($select_message)>0) {
            echo 'message already send';
        }else{
            mysqli_query($conn, "INSERT INTO `message`(`user_id`,`name`,`email`,`number`,`message`) VALUES('$user_id','$name','$email','$number','$message')") or die('query failed');
        }
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!------------------------bootstrap icon link------------------------------->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="main.css">
    <title>TechToGo - contact us page</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <div class="banner">
        <div class="detail">
            <h1>contact</h1>
            <p>Contact us if you see anything unusual</p>
            <a href="index.php">Back to home page</a><span>/ contact</span>
        </div>
    </div>
    <div class="line"></div>
    <!-----------------------about us------------------------>


    <div class="services">
    	<div class="row">
    		<div class="box">
    			<img src="img/0.png">
    			<div>
    				<h1>Information</h1>
    				<p>At Tech To Go, we understand that choosing the right technology device can be overwhelming. Whether you are looking for a new computer, cellphone, or any peripheral, our platform is designed to simplify your decision-making process. We offer detailed information, in-depth reviews, and comprehensive comparisons across a wide range of tech products.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="img/1.png">
    			<div>
    				<h1>Quality</h1>
    				<p>What sets us apart is our price comparison feature. We help you find the best deals by comparing prices of products among different stores, ensuring you get the best value for your money. Our intuitive interfaces and robust backend architecture provide a seamless user experience, making it easy to find the perfect product to meet your needs at the best price.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="img/2.png">
    			<div>
    				<h1>Online Support 24/7</h1>
    				<p>Thank you for choosing Tech To Go. We are here to ensure that your journey to the perfect tech product is as smooth and enjoyable as possible.</p>
    			</div>
    		</div>
    	</div>
    </div>

    
    <div class="line4"></div>
    <div class="form-container">
        <h1 class="title">leave a message</h1>
        <form method="post">
            <div class="input-field">
                <label>your name</label><br>
                <input type="text" name="name">
            </div>
            <div class="input-field">
                <label>your email</label><br>
                <input type="text" name="email">
            </div>
            <div class="input-field">
                <label>number</label><br>
                <input type="number" name="number">
            </div>
            <div class="input-field">
                <label>your message</label><br>
                <textarea name="message"></textarea>
            </div>
            <button type="submit" name="submit-btn">send message</button>
        </form>
    </div>
    <div class="line"></div>
    <div class="line2"></div>
    <div class="address">
        <h1 class="title">our contact</h1>
        <div class="row">
            <div class="box">
                <i class="bi bi-map-fill"></i>
                <div>
                    <h4>address</h4>
                    <p>Street number - Blah on Blah avenue<br> Surrey,
                        BC, Postel</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-telephone-fill"></i>
                <div>
                    <h4>phone number</h4>
                    <p>778-222-4455</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-envelope-fill"></i>
                <div>
                    <h4>email</h4>
                    <p>balkaran.singh.techscanner@gmail.com</p>
                </div>
            </div>
        </div>
    </div>
    <div class="line3"></div>
    <?php include 'footer.php'; ?>
    <script type="text/javascript" src="script.js"></script>
</body>

</html>