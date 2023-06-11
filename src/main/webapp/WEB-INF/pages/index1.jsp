<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<c:forEach items="${productList.content}" var="item">
<div id="product_${item.id}" class="col-sm-3">
<form action="addToCart/${item.id}" method="POST"s>
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
</html>