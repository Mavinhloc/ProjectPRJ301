<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <title>Product Listing Page</title>


        <!-- Additional CSS Files -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/maincss.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">
    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  
        <!-- ***** Preloader End ***** -->

        <jsp:include page="Header.jsp"></jsp:include>

            <!-- ***** Main Banner Area Start ***** -->
            <div class="page-heading" id="top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="inner-content">
                                <h2>Check Our Products</h2>
                                <span>Text</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ***** Main Banner Area End ***** -->

            <!-- ***** Category Area Starts ***** -->
            <section class="section category-section" id="categories">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="">
                            <div class="section-heading justify-content-center">
                                <h2>Shop by Category</h2>
                                <span>Explore our product categories even further </span>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="">
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="categoryDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Category
                                </button>
                                <div class="dropdown-menu" aria-labelledby="categoryDropdown"> 
                                <c:forEach items="${listC}" var="o">
                                    <a class="dropdown-item ${tag == o.cid ? "active" : ""}" href="category?cid=${o.cid}">${o.cname}</a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Category Area Ends ***** -->



        <!-- ***** Products Area Starts ***** -->
        <section class="section" id="products">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-heading">
                            <h2>Our Latest Products</h2>
                            <span>Check out all of our products.</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div id="content" class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="product col-lg-4">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.jsp"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="single-product.jsp"><i class="fa fa-star"></i></a></li>
                                            <li><a href="single-product.jsp"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="down-content">
                                    <h4><a href="detail?pid=${o.id}">${o.name}</a></h4>
                                    <span>${o.price} $</span>
                                    <h5>${o.title}</h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <!-- <button onclick="loadMore()" class="btn btn-primary">Load More</button> -->

                <%--Chuyen trang --%>
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li class="active">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </section>
        <!-- ***** Products Area Ends ***** -->

        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- jQuery -->
        <script src="assets/js/jquery-2.1.0.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Plugins -->
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/accordions.js"></script>
        <script src="assets/js/datepicker.js"></script>
        <script src="assets/js/scrollreveal.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/imgfix.min.js"></script> 
        <script src="assets/js/slick.js"></script> 
        <script src="assets/js/lightbox.js"></script> 
        <script src="assets/js/isotope.js"></script> 

        <!-- Global Init -->
        <script src="assets/js/custom.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

        <script>

                    $(function () {
                        var selectedClass = "";
                        $("p").click(function () {
                            selectedClass = $(this).attr("data-rel");
                            $("#portfolio").fadeTo(50, 0.1);
                            $("#portfolio div").not("." + selectedClass).fadeOut();
                            setTimeout(function () {
                                $("." + selectedClass).fadeIn();
                                $("#portfolio").fadeTo(50, 1);
                            }, 500);

                        });
                    });

        </script>

        <script>
            function loadMore() {
                var amount = document.getElementsByClassName("product").length;
                $.ajax({
                    url: "/Assignment/load",
                    type: "get", //send it through get method
                    data: {
                        exist: amount
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML += data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>
    </body>

</html>
