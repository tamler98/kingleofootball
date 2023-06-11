<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <link rel="icon" type="image/svg" href="<c:url value="/resources/static/image/favicon_KL.svg" />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>KingLeo Football</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="error-message" class="alert alert-danger" style="display: none;">${msg}</div>
    <main style="background: white;">
        <div class="slogan">KING LEO FOOTBALL - NÂNG NIU ĐÔI BÀN CHÂN BẠN!</div>
        <div class="slider">
            <div class="slide active">
              <img src="<c:url value="/resources/static/image/slide/slide-02.png" />" alt="Image 1">
            </div>
            <div class="slide">
              <img src="<c:url value="/resources/static/image/slide/slide-03.png" />" alt="Image 2">
            </div>
            <div class="slide">
              <img src="<c:url value="/resources/static/image/slide/slide-05.png" />" alt="Image 3">
            </div>
            <a class="prev" onclick="prevSlide()">&#10094;</a>
            <a class="next" onclick="nextSlide()">&#10095;</a>
        </div>
        <div class="nav_branch_logo">
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__nike.jpg" />" alt="" class="brand_logo"></a>
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__adidas.jpg" />" alt="" class="brand_logo"></a>
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__ct3.jpg" />" alt="" class="brand_logo"></a>
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__kamito.jpg" />" alt="" class="brand_logo"></a>
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__mizuno.jpg" />" alt="" class="brand_logo"></a>
            <a href=""><img src="<c:url value="/resources/static/image/brand/logo__kingleo.jpg" />" alt="" class="brand_logo"></a>
        </div>
        <div class="popular_product">
            <div class="popular_product_header">
                <h1>SẢN PHẨM BÁN CHẠY</h1>
            </div>
            <div class="popular_product_product_lines">
                <div class="row">
                    <div class="col-sm-3">
                <div class="popular_product_product_line">
                    <div class="astra-shop-thumbnail-wrap">
                        <a href=""><img src="<c:url value="/resources/static/image/product/product1.jfif" />" alt="Image 1"></a>
                    </div>
                    <div class="astra-shop-summary-wrap">
                        <div class="product_category"><a href="" class="product_link">Nike - Vapo 15 Pro</a></div>
                        <div class="product_name"><a href="">Vapo 15 Pro Vàng</a></div>
                        <div class="product_rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <div class="product_price">520.000 VNĐ</div>
                    </div>
                </div>
                </div>
                <div class="col-sm-3">
                <div class="popular_product_product_line">
                    <div class="astra-shop-thumbnail-wrap">
                        <a href=""><img src="<c:url value="/resources/static/image/product/product2.jpg" />" alt="Image 1"></a>
                    </div>
                    <div class="astra-shop-summary-wrap">
                        <div class="product_category"><a href="" class="product_link">Nike - Vapo 15 Pro</a></div>
                        <div class="product_name"><a href="">Vapo 15 Pro Vàng</a></div>
                        <div class="product_rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <div class="product_price">520.000 VNĐ</div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="popular_product_product_line">
                    <div class="astra-shop-thumbnail-wrap">
                        <a href=""><img src="<c:url value="/resources/static/image/product/product2.jpg" />" alt="Image 1"></a>
                    </div>
                    <div class="astra-shop-summary-wrap">
                        <div class="product_category"><a href="" class="product_link">Nike - Vapo 15 Pro</a></div>
                        <div class="product_name"><a href="">Vapo 15 Pro Vàng</a></div>
                        <div class="product_rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <div class="product_price">520.000 VNĐ</div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="popular_product_product_line">
                    <div class="astra-shop-thumbnail-wrap">
                        <a href=""><img src="<c:url value="/resources/static/image/product/product2.jpg" />" alt="Image 4"></a>
                    </div>
                    <div class="astra-shop-summary-wrap">
                        <div class="product_category"><a href="" class="product_link">Nike - Vapo 15 Pro</a></div>
                        <div class="product_name"><a href="">Vapo 15 Pro Vàng</a></div>
                        <div class="product_rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <div class="product_price">520.000 VNĐ</div>
                    </div>
                </div>
            </div>
                </div>

            </div>
        </div>
        <div class="popular_product1">
            <div class="container-xl">
                <h2>Featured <b>Products</b></h2>
                <!-- Wrapper for carousel items -->
                <div class="item">
                    <div class="row">
                    <c:forEach items="${productList}" var="item">
                        <div id="product_${item.id}" class="col-sm-3">
                            <form action="addToCart/${item.id}" method="POST" modelAttribute="product">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                    <div class="img-box">
                                        <a href=""><img src="<c:url value='/resources/static/image/product/product2.jpg' />" alt="Image 1"></a>
                                    </div>
                                    <div class="thumb-content">
                                        <h4>${item.product_name}</h4>
                                        <div class="choose_color">
                                            <label for="" class="size_label">Màu:</label>
                                            <c:forEach var="color" items="${item.productColorEntities}">
                                                <button class="color_btn" onclick="setColor(${item.id}, event, '${color.color_name}')">${color.color_name}</button>
                                            </c:forEach>
                                        </div>
                                        <div class="choose_size">
                                            <label for="" class="size_label">Size:</label>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '38')">38</button>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '39')">39</button>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '40')">40</button>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '41')">41</button>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '42')">42</button>
                                            <button type="button" class="size_btn" onclick="setSize(${item.id}, event, '43')">43</button>
                                        </div>
                                        <div class="thumb-content_footer">
                                            <p class="item-price"><b>${item.price} VNĐ</b></p>
                                            <button type="submit" class="btn btn-primary" onclick="updateOrderDetails()">Mua ngay</button>
                                        </div>
                                    </div>
                                </div>

                                <!-- Thêm hai trường ẩn để lưu trữ giá trị màu và kích thước -->
                                <input type="hidden" id="colorInput_${item.id}" name="color" value="">
                                <input type="hidden" id="sizeInput_${item.id}" name="size" value="">
                            </form>
                        </div>
                    </c:forEach>

                    </div>
                </div>
                </div>
            </div>
        </div>


        <div class="product_footer">
            <div class="pagination">
                <c:if test="${totalPages > 1}">
                    <c:if test="${currentPage > 0}">
                        <a href="?page=${currentPage - 1}">&laquo;</a>
                    </c:if>
                    <c:forEach begin="0" end="${totalPages - 1}" var="i">
                    <a href="?page=${i}">${i+1}</a>
                    </c:forEach>
                    <c:if test="${currentPage < totalPages - 1}">
                        <a href="?page=${currentPage + 1}">&raquo;</a>
                    </c:if>
                </c:if>
            </div>
        </div>
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
<script>
    $(document).ready(function(){
        $(".wish-icon i").click(function(){
            $(this).toggleClass("fa-heart fa-heart-o");
        });
    });
    </script>

 <script>
  function setColor(productId, event, color) {
    event.preventDefault();
    // Cập nhật giá trị màu trong trường ẩn của sản phẩm có productId
    var colorInput = document.getElementById("colorInput_" + productId);
    colorInput.value = color;

    // Loại bỏ lớp 'selected' từ tất cả các nút màu của sản phẩm
    var colorButtons = document.querySelectorAll("#product_" + productId + " .color_btn");
    colorButtons.forEach(function(button) {
      button.classList.remove("selected");
    });

    // Thêm lớp 'selected' vào nút màu được chọn
    event.target.classList.add("selected");
  }

  function setSize(productId, event, size) {
    event.preventDefault();
    // Cập nhật giá trị kích thước trong trường ẩn của sản phẩm có productId
    var sizeInput = document.getElementById("sizeInput_" + productId);
    sizeInput.value = size;

    // Loại bỏ lớp 'selected' từ tất cả các nút kích thước của sản phẩm
    var sizeButtons = document.querySelectorAll("#product_" + productId + " .size_btn");
    sizeButtons.forEach(function(button) {
      button.classList.remove("selected");
    });

    // Thêm lớp 'selected' vào nút kích thước được chọn
    event.target.classList.add("selected");
  }

  function updateOrderDetails() {
    // Thực hiện bất kỳ xử lý bổ sung trước khi gửi biểu mẫu (nếu cần)

    // Gửi biểu mẫu
    document.querySelector("form").submit();
  }
 </script>
    <script>
      document.addEventListener("DOMContentLoaded", function() {
          var currentPage = "${currentPage}"; // Lấy giá trị của biến currentPage từ JSP

          // Tìm tất cả các thẻ <a> trong phần tử có lớp pagination
          var pageLinks = document.querySelectorAll(".pagination a");

          // Lặp qua các thẻ <a> và kiểm tra xem có phải là trang hiện tại hay không
          for (var i = 0; i < pageLinks.length; i++) {
            if (pageLinks[i].textContent - 1 === parseInt(currentPage)) {
              pageLinks[i].classList.add("active-page"); // Thêm lớp active-page cho liên kết hiện tại
            }
          }
        });
    </script>
</html>