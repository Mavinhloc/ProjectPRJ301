<%-- 
    Document   : HomePage
    Created on : Jun 3, 2023, 11:54:18 PM
    Author     : ASUS
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Gym Shop - Your One-Stop Fitness Store</title>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body onload="showSlides()">
        <header>
            <nav>
                <div class="left-menu">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                
                <div class="right-menu">
                    <ul>
                        <li class="search">
                            <input type="text" placeholder="Search for our products">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </li>
                        <li><a href="login.jsp">Login</a></li>
                        <li class="cart">
                            <a href="#"><i class="fas fa-shopping-cart"></i> Cart</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wallpaper">
            <img src="images/wallpaper.jpg" alt="Gym"/>
            <a href="#" class="btn">Shop Now</a>
        </div>
        <main>
            <section class="login">
            </section>
            <section class="featured-products">
                <h2>Featured Products</h2>
                <div class="product-grid">
                    <div class="product-card">
                        <img src="product1.jpg" alt="Product 1">
                        <h3>Product 1</h3>
                        <p>$19.99</p>
                        <a href="#" class="btn">Add to Cart</a>
                    </div>
                    <div class="product-card">
                        <img src="product2.jpg" alt="Product 2">
                        <h3>Product 2</h3>
                        <p>$24.99</p>
                        <a href="#" class="btn">Add to Cart</a>
                    </div>
                    <div class="product-card">
                        <img src="product3.jpg" alt="Product 3">
                        <h3>Product 3</h3>
                        <p>$29.99</p>
                        <a href="#" class="btn">Add to Cart</a>
                    </div>
                    <!-- Add more product cards as needed -->
                </div>
            </section>
            <section class="gallery">
                <h2>Image Gallery</h2>
                <div cclass="slideshow-container">
                    <div class="slide">
                        <img src="images/1.jpg" alt="Gallery 1">
                    </div>
                    <div class="slide">
                        <img src="images/2.jpg" alt="Gallery 2">
                    </div>
                    <div class="slide">
                        <img src="images/3.jpg" alt="Gallery 3">
                    </div>
                    <!-- Add more images as needed -->
                </div>
            </section>

            <section class="categories">
                <h2>Categories</h2>
                <ul>
                    <li><a href="#">Weights</a></li>
                    <li><a href="#">Cardio Equipment</a></li>
                    <li><a href="#">Yoga & Pilates</a></li>
                    <li><a href="#">Fitness Accessories</a></li>
                    <!-- Add more categories as needed -->
                </ul>
            </section>

            <section class="newsletter">
                <h2>Subscribe to Our Newsletter</h2>
                <p>Stay up-to-date with the latest offers and fitness tips</p>
                <form action="#" method="post">
                    <input type="email" name="email" placeholder="Enter your email" required>
                    <button type="submit">Subscribe</button>
                </form>
            </section>

        </main>
        <footer>
            <p>&copy; 2023 Gym Shop. All rights reserved.</p>
        </footer>
    </body>

    <script src="js/mycode.js"></script>
</html>
