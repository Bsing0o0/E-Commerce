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
    //adding product in wishlist
    if (isset($_POST['add_to_wishlist'])) {
    	$product_id = $_POST['product_id'];
    	$product_name = $_POST['product_name'];
    	$product_price = $_POST['product_price'];
    	$product_image = $_POST['product_image'];

    	$wishlist_number = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	$cart_num = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	if (mysqli_num_rows($wishlist_number)>0) {
    		$message[]='product already exist in wishlist';
    	}else if (mysqli_num_rows($cart_num)>0) {
    		$message[]='product already exist in cart';
    	}else{
    		mysqli_query($conn, "INSERT INTO `wishlist`(`user_id`,`pid`,`name`,`price`,`image`) VALUES('$user_id','$product_id','$product_name','$product_price','$product_image')");
    		$message[]='product successfuly added in your wishlist';
    	}
    }

     //adding product in cart
    if (isset($_POST['add_to_cart'])) {
    	$product_id = $_POST['product_id'];
    	$product_name = $_POST['product_name'];
    	$product_price = $_POST['product_price'];
    	$product_image = $_POST['product_image'];
    	$product_quantity = $_POST['product_quantity'];

    	$cart_num = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	if (mysqli_num_rows($cart_num)>0) {
    		$message[]='product already exist in cart';
    	}else{
    		mysqli_query($conn, "INSERT INTO `cart`(`user_id`,`pid`,`name`,`price`,`quantity`,`image`) VALUES('$user_id','$product_id','$product_name','$product_price','$product_quantity','$product_image')");
    		$message[]='product successfuly added in your cart';
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!------------------------bootstrap css link------------------------------->
    <!------------------------slick slider link------------------------------->
    <link rel="stylesheet" type="text/css" href="slick.css" />
    <!------------------------default css link------------------------------->
    <link rel="stylesheet" href="main.css">
    <title>TechToGo - Home</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <!------------------------hero img container------------------------------->

    <div class="container-fluid">
        <div class="hero-slider">
		<div class="slider-item">
                <img src="img/14.jpg" alt="...">
                <div class="slider-caption">
				<span>Experience The Quality</span>
                    <h1>Premium Products<br> Electronics</h1>
                    <p>State-of-the-art electronic devices crafted by expert engineers using premium materials, ensuring top performance in the most pristine environments!</p>
                    <a href="" class="btn">shop now</a>
                </div>
            </div>
			<div class="slider-item">
                <img src="img/slider.jpg" alt="...">
                <div class="slider-caption">
				<span>Experience The Quality</span>
                    <h1>Premium Products<br> Electronics</h1>
                    <p>State-of-the-art electronic devices crafted by expert engineers using premium materials, ensuring top performance in the most pristine environments!</p>
                    <a href="" class="btn">shop now</a>
                </div>
            </div>
            <div class="slider-item">
                <img src="img/slider2.jpg" alt="...">
                <div class="slider-caption">
				<span>Experience The Quality</span>
                    <h1>Premium Products<br> Electronics</h1>
                    <p>State-of-the-art electronic devices crafted by expert engineers using premium materials, ensuring top performance in the most pristine environments!</p>
                    <a href="" class="btn">shop now</a>
                </div>
            </div>
        </div>
        <div class="control">
            <i class="bi bi-chevron-left prev"></i>
            <i class="bi bi-chevron-right next"></i>
        </div>
    </div>
    <div class="line"></div>
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

    <div class="line2"></div>
    <div class="story">
    	<div class="row">
    		<div class="box">
    			<span>our story</span>
    			<h1>Students With some Dreams</h1>
    			<p> We want to be able to provide the support and care that we weren't lucky enough to experience at other places</p>
                <a href="shop.php" class="btn">shop now</a>
    		</div>
    		<div class="box">
    			<img src="img/8.jpg">
    		</div>
    	</div>
    </div>
    <div class="line3"></div>
    <!-- testimonial -->
    <div class="line4"></div>
    <div class="testimonial-fluid">
    	<h1 class="title">What Our Customers Say's</h1>
    	<div class="testimonial-slider">
    		<div class="testimonial-item">
    			<img src="img/3.jpg">
    			<div class="testimonial-caption">
				<p><strong>Name:</strong> Lisa H.</p>
				<p><strong>Rating:</strong> ★★★★☆</p>
				 <p><strong>Review:</strong></p>
    				<p>Tech To Go offers a fantastic way to compare prices on electronic gadgets. I was interested in buying a new tablet, and the site provided a detailed comparison of prices from various retailers. The side-by-side comparison made it simple to see which store had the best offer, including any additional perks like extended warranties or free tech support. While I wish there were more user reviews for the products themselves, the price comparison feature is top-notch!</p>

    			</div>
    		</div>
    		<div class="testimonial-item">
    			<img src="img/profile.jpg">
    			<div class="testimonial-caption">
					<p><strong>Name:</strong> John D.</p>
					<p><strong>Rating:</strong> ★★★★★</p>
					<p><strong>Review:</strong></p>
					<p>
						Tech To Go is the best site I've found for comparing electronics prices. I was shopping for a gaming console and found some incredible deals that I wouldn't have discovered on my own. The price alerts feature is especially helpful, letting me know when a product drops in price or goes on sale. I ended up getting a bundle deal that included games and accessories, all thanks to Tech To Go's comprehensive comparison. This site makes it easy to make informed purchasing decisions!
					</p>
				</div>
			</div>
    		<div class="testimonial-item">
    			<img src="img/4.jpg">
    			<div class="testimonial-caption">
					<p><strong>Name:</strong> Emily T.</p>
					<p><strong>Rating:</strong> ★★★★★</p>
					<p><strong>Review:</strong></p>
					<p>
						I love Tech To Go for its extensive comparison of prices for smart home devices. I was on the lookout for a smart thermostat, and Tech To Go showed me the price differences between Home Depot, Lowe's, and online marketplaces. I was surprised to see how much the prices varied, even for the same model! Thanks to Tech To Go, I saved 20% on my purchase and got free shipping. This site is now my go-to for all electronic purchases!
					</p>
				</div>
    		</div>
    	</div>
    	 <div class="control">
            <i class="bi bi-chevron-left prev1"></i>
            <i class="bi bi-chevron-right next1"></i>
        </div>
    </div>
    <div class="line"></div>
    <!---discover section --->
    <div class="line2"></div>
    <div class="discover">
    	<div class="detail">
    		<h1 class="title">COMPARE/ CONQUER \ SAVE</h1>
    		<span>Buy Now And Save 30% Off!</span>
            <a href="shop.php" class="btn">discover now</a>
    	</div>
    	<div class="img-box">
    		<img src="img/hex.png">
    	</div>
    </div>
    <div class="line3"></div>
    <?php include 'homeshop.php'; ?>
    <div class="line2"></div>
    <div class="newslatter">
    	<h1 class="title">Sign up for Notification</h1>
    	<p>Get 15% off your next order. Be the first to learn about promotions special events, new arrivals and more.
        </p>
        <input type="text" name="" placeholder="your Email Address...">
        <button>subscribe now</button>
    </div>
    <div class="line3"></div>
    <?php include 'footer.php'; ?>
    <script src="jquary.js"></script>
    <script src="slick.js"></script>

    <script type="text/javascript">
        <?php include 'script2.js' ?>
    </script>
</body>

</html>