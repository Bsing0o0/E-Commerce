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
    <title>TechToGo - home page</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <div class="banner">
        <div class="detail">
            <h1>about us</h1>
            <p>Info on Us</p>
            <a href="index.php">Go back to home Page /</a><span> \ About us</span>
        </div>
    </div>
    <div class="line"></div>
    <!-----------------------about us------------------------>
    <div class="line2"></div>
    <div class="about-us">
        <div class="row">
            <div class="box">
                <div class="title">
                    <span>About Our Experience</span>
                    <h1>With years of experience as a Customer.</h1>
                </div>
                <p>
                At Tech To Go, we understand that choosing the right technology device can be overwhelming. Whether you are looking for a new computer, cellphone, or any peripheral, our platform is designed to simplify your decision-making process. We offer detailed information, in-depth reviews, and comprehensive comparisons across a wide range of tech products.</p>
                <p>What sets us apart is our price comparison feature. We help you find the best deals by comparing prices of products among different stores, ensuring you get the best value for your money. Our intuitive interfaces and robust backend architecture provide a seamless user experience, making it easy to find the perfect product to meet your needs at the best price.</p>
            </div>
            <div class="img-box">
                <img src="img/about3.jpg">
            </div>
        </div>
    </div>
    
    <div class="line"></div>
    <div class="line2"></div>
    <div class="ideas">
        <div class="title">
            <h1>We And Our Clients Are Happy To Cooperate With Our Company</h1>
            <span>our features</span>
        </div>
        <div class="row">
            <div class="box">
                <i class="bi bi-stack"></i>
                <div class="detail">
                    <h2>What We Really Do</h2>
                    <p>Tech to go is the best site available to compare different products and upload your own thought on the device</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-grid-1x2-fill"></i>
                <div class="detail">
                    <h2>History of Beginning</h2>
                    <p>Tired from the lies from industries and big corporation, we striveto provide truth in simpelist form</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-tropical-storm"></i>
                <div class="detail">
                    <h2>Our Vision</h2>
                    <p>To be able to provide best possible answer to a comparrision between devices so making a PC becomes fast and a cheaper process. </p>
                </div>
            </div>
        </div>
    </div>
    <div class="line3"></div>
    <?php include 'footer.php'; ?>
    <script type="text/javascript" src="script.js"></script>
</body>

</html>