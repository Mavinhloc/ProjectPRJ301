<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.jsp" class="logo">
                        <img src="assets/images/logo1.png">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <c:choose>
                            <c:when test="${sessionScope.acc != null}">
                                <li class="nav-item">
                                    Hello ${sessionScope.acc.username}
                                </li>
                                <li>
                                    <a href="logout">Logout</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a href="Login.jsp">Login</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <li class="scroll-to-section nav-item"><a href="Cart.jsp">Cart</a></li>
                        <li class="submenu">
                            <a href="javascript:;">Pages</a>
                            <ul>
                                <li><a href="about.jsp">About Us</a></li>
                                <li><a href="home">Products</a></li>
                                <li><a href="contact.jsp">Contact Us</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="javascript:;">Manage</a>
                            <ul>
                                <c:if test="${sessionScope.acc.isSell == 1}">
                                    <li><a href="manager">Products</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <li><a href="#">Account</a></li>
                                    </c:if>               
                                <li><a href="#">Features Page 3</a></li>
                            </ul>
                        </li>
                        <li class="search-form">
                            <form action="search" method="post">
                                <input type="text" id="search-input" name="txt" value="${searchValue}" placeholder="Search...">
                                <button type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                            </form>
                        </li>
                    </ul>        
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->