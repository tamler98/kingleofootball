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
    <link rel="icon" type="image/svg" href="<c:url value="../resources/static/image/favicon_KL.svg" />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='<c:url value="/resources/static/css/bookingcart.css" />' rel='stylesheet'>
    <title>KingLeo Football</title>
</head>
  <header>
        <div class="row">
            <div class="col-sm-2" style="padding-top: 5px;display: flex;justify-content: right;">
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
            <div class="col-sm-4">
                <div class="account_action">
                <div class="search-container">
                    <input type="search" placeholder="Tìm kiếm...">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </div>
                <div class="account_icons">
                    <a href="" class="account_icon"><i class="fas fa-user-circle"></i></a>
                    <div class="cart-button">
                    <a href="/cart" class="account_icon"><i class="fas fa-shopping-cart"></i></a>
                    <span class='badge badge-warning' id='lblCartCount'>${count}</span>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </header>