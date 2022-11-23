<%--
  Created by IntelliJ IDEA.
  User: eliza
  Date: 04.11.2022
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Tour page</title>
  <link rel="stylesheet" href="tourstyle.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:100" rel="stylesheet">


</head>
<body>
<nav class="navbar">

  <h1 class="logo">SkyLand</h1>

  <ul class="nav-links">
    <li id="aboutUs"><a href="/skyland/about">About us</a></li>
    <li><a href="/login">Sign in</a> </li>
    <li><a href="#"></a> | </li>
    <li><a href="/registration">Sign up</a></li>
    <li id="userAccount"><a href="/skyland/account"></a></li>

  </ul>
</nav>
<div class="container">

  <div class="ph">
    <h1 class="photos">Photos</h1>
    <div class="line"> </div>
  </div>
  <div class="content">
    <h1 class="titleTour"> Santorini</h1>
    <div class="aboutAndLine">
      <div class="about">
        About
      </div>
      <div class="lineAbout"></div>
    </div>
    <ul class="conditions">
      <li>Free food</li>
      <li>Two person</li>
      <li>10 days</li>
      <li>breakfast included</li>
      <li>$1099.99</li>
    </ul>

  </div>
  <div id="slide">

    <div class="item" id="first" style="background-image: url(1.jpg);">

    </div>
    <div class="item" id="second" style="background-image: url(2.jpg);">

    </div>
    <div class="item" id="third" style="background-image: url(3.jpg);">

    </div>
    <div class="item" id="forth" style="background-image: url(4.jpg);">

    </div>
    <div class="item" id="fifth" style="background-image: url(5.jpg);">

    </div>
    <div class="item" id="sixth" style="background-image: url(6.jpg);">

    </div>
  </div>


</div>
<div class="booking">
  <h1 class="reserve">Reserve tour</h1>
  <div class="row">
    <div class="first"><label class="text-input">Name: </label> <input  type="text-input" class="input-info" ></div>
    <div><label class="text-input">Phone number: </label><input type="text-input" class="input-info"></div>
  </div>
  <button class="book">Book the tour</button>

</div>
<script src="script.js"></script>
</body>
</html>