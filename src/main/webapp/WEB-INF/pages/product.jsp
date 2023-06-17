<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sản phẩm</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
    <!-- CSS -->
    <link href='<c:url value="/resources/static/css/product.css" />' rel='stylesheet'>
    <link rel="icon" type="image/svg" href="<c:url value="/resources/static/image/favicon_KL.svg" />">
    <meta name="robots" content="noindex,follow" />
  </head>

  <body>
  <jsp:include page="header.jsp" />
    <main class="container">

      <!-- Left Column / Headphones Image -->
      <div class="left-column">
      <c:choose>
        <c:when test="${not empty product.productColorEntities}">
          <c:set var="firstColor" value="${product.productColorEntities[0]}" />
          <a href="">
            <img data-image="${firstColor.color_name}" src="<c:url value='/resources/static/image/${firstColor.color_name}.png' />" alt="" class="brand_logo active">
          </a>
        </c:when>
        <c:otherwise>
          <!-- Hiển thị ảnh mặc định nếu không có ảnh nào trong danh sách -->
          <img data-image="default" src="<c:url value='/resources/static/image/default.png' />" alt="Default Image" class="brand_logo active">
        </c:otherwise>
      </c:choose>

      <c:forEach var="color" items="${product.productColorEntities}" varStatus="loop">
        <c:if test="${loop.index > 0}">
          <a href="">
            <img data-image="${color.color_name}" src="<c:url value='/resources/static/image/${color.color_name}.png' />" alt="" class="brand_logo">
          </a>
        </c:if>
      </c:forEach>
      </div>


      <!-- Right Column -->
      <div class="right-column">

        <!-- Product Description -->
        <form action="/addToCart/${product.id}" method="POST" modelAttribute="product">
        <div class="product-description">
          <span>KingLeo Football</span>
          <h1>${product.product_name}</h1>
          <p>The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance</p>
        </div>

        <!-- Product Configuration -->
        <div class="product-configuration">

          <!-- Product Color -->
          <div class="product-color">
            <span>Màu</span>

            <div class="color-choose">
              <c:forEach var="color" items="${product.productColorEntities}">
                <div>
                  <input data-image="${color.color_name}" type="radio" id="${color.color_name}" onclick="setColor(${product.id}, event, '${color.color_name}')" <c:if test="${color eq product.productColorEntities[0]}">checked</c:if>>
                  <label for="${color.color_name}"><span></span></label>
                </div>
              </c:forEach>
            </div>

          </div>

          <!-- Cable Configuration -->
          <div class="cable-config">
            <span>size</span>

            <div class="cable-choose">
              <button type="button" onclick="setSize(${product.id}, event, '38')">38</button>
              <button type="button" onclick="setSize(${product.id}, event, '39')">39</button>
              <button type="button" onclick="setSize(${product.id}, event, '40')">40</button>
              <button type="button" onclick="setSize(${product.id}, event, '41')">41</button>
              <button type="button" onclick="setSize(${product.id}, event, '42')">42</button>
              <button type="button" onclick="setSize(${product.id}, event, '43')">43</button>
            </div>

            <a href="#">How to configurate your headphones</a>
          </div>
        </div>

        <!-- Product Pricing -->
        <div class="product-price">
          <span>148$</span>
          <input type="hidden" id="colorInput_${product.id}" name="color" value="">
           <input type="hidden" id="sizeInput_${product.id}" name="size" value="">
          <button type="submit" onclick="updateOrderDetails()" class="cart-btn" style="text-decoration: none; border: none; color: white;">Thêm vào giỏ hàng</button>

          </form>
        </div>
      </div>
    </main>
    <jsp:include page="footer.jsp" />

    <!-- Scripts -->
    <script>
      function setColor(productId, event, color) {
        event.preventDefault();
        // Cập nhật giá trị màu trong trường ẩn của sản phẩm có productId
        var colorInput = document.getElementById("colorInput_" + productId);
        colorInput.value = color;
      }

      function setSize(productId, event, size) {
        event.preventDefault();
        // Cập nhật giá trị kích thước trong trường ẩn của sản phẩm có productId
        var sizeInput = document.getElementById("sizeInput_" + productId);
        sizeInput.value = size;
      }
      function updateOrderDetails() {
        // Thực hiện bất kỳ xử lý bổ sung trước khi gửi biểu mẫu (nếu cần)
        // Gửi biểu mẫu
        document.querySelector("form").submit();
      }
     </script>
       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src='<c:url value="/resources/static/js/product.js" />'></script>

  </body>
</html>
