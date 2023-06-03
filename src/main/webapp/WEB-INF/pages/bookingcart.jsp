<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='<c:url value="/resources/static/css/style.css" />' rel='stylesheet'>
    <link rel="icon" type="image/svg" href="/image/favicon_KL.svg">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>KingLeo Football</title>
</head>
<body>
    <header>
        <div class="row">
            <div class="col-sm-3">
                <div class="header_logo">
                    <a href="/"><img src="<c:url value="/resources/static/image/logo_KL-06.png" />" style="height: 70px;" alt=""></a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="header_nav">
                    <a href="" class="nav_header_a">NIKE</a>
                    <a href="" class="nav_header_a">ADIDAS</a>
                    <a href="" class="nav_header_a">MIZUNO</a>
                    <a href="" class="nav_header_a">CT3</a>
                    <a href="" class="nav_header_a">KINGLEO</a>
                    <a href="" class="nav_header_a">11PRO TONI</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="account_action">
                <div class="search-container">
                    <input type="search" placeholder="Tìm kiếm...">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </div>
                <div class="account_icons">
                    <a href="" class="account_icon"><i class="fas fa-user-circle"></i></a>
                    <a href="" class="account_icon"><i class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
        </div>
        </div>
    </header>
    <main style="background: white;">
                 <table class="table">
                   <thead>
                     <tr>
                       <th scope="col">#</th>
                       <th scope="col">Name</th>
                       <th scope="col">Size</th>
                       <th scope="col">Color</th>
                       <th scope="col">Quantity</th>
                       <th scope="col">Price</th>
                       <th scope="col">Total</th>
                     </tr>
                   </thead>
                   <tbody>
                   <c:forEach items="${bookingCartItemList}" var="item">
                     <tr style="background: white;">
                       <th scope="row">${item.id}</th>
                       <td>${item.productEntity.product_name}</td>
                       <td>${item.size}</td>
                       <td>${item.color}</td>
                       <td>${item.quantity}</td>
                       <td>${item.productEntity.price}</td>
                       <td>${(item.quantity)*(item.productEntity.price)}</td>
                     </tr>
                   </c:forEach>
                   </tbody>
                 </table>
        <footer>
            <div class="container">
              <div class="footer-content">
                <div class="footer-column">
                    <img src="<c:url value="/resources/static/image/logo_KL-06.png" />" alt="Image 1">
                </div>
                <div class="footer-column">
                  <h3>About Us</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae metus commodo, faucibus lectus quis, tincidunt odio.</p>
                </div>
                <div class="footer-column">
                  <h3>Contact Us</h3>
                  <p>Address: 123 Street, City, Country</p>
                  <p>Phone: +1234567890</p>
                  <p>Email: info@example.com</p>
                </div>
                <div class="footer-column">
                  <h3>Follow Us</h3>
                  <ul class="social-media">
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  </ul>
                </div>
              </div>
              <p class="footer-copy">&copy; 2023 Your Shop. All rights reserved.</p>
            </div>
        </footer>
    </main>
</body>
</html>