<%--
  Created by IntelliJ IDEA.
  User: eliza
  Date: 27.08.2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style-user.css" rel="stylesheet">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body>
<div class="container">

    <div class="personal-info">
        <a href="index.html" class="title"><h1 class="logo" > SkyLand</h1> </a>

        <div class="information">
            <div class="title_info">Personal information</div>
            <div class="after_title">
                <div class="field">
                    <label for="first_name">First Name</label>
                    <input type="text" id="first_name" spellcheck="false" placeholder=""/>
                </div>
                <div class="field">
                    <label for="last_name">Last Name</label>
                    <input type="text" id="last_name" spellcheck="false" placeholder=""/>
                </div>
                <div class="field">
                    <label for="phone_number">Phone number</label>
                    <input type="text" id="phone_number" spellcheck="false" placeholder=""/>
                </div>
                <div class="field">
                    <label for="email">Email</label>
                    <input type="text" id="email" spellcheck="false" placeholder=""/>
                </div>

            </div>
        </div>
        <button class="edit-btn">Edit profile</button>

    </div>

    <div class="second">
        <button class="exit-btn">Exit</button>
        <div class="wishlist">

            <h3>Wishlist</h3>
            <div class="line"></div>
            <div class="travel-card-personal">

                <div class="travel-info-personal">
                    <div class="travel-image-personal">
                        <img src="img/South America/card1.png" >
                    </div>

                    <div class="PriceAndButtonPersonal">
                        <div class="price-and-name">
                            <h2 class="name">Buenos Aires</h2>
                            <p class="price-personal">$1299.99</p>
                        </div>
                        <ul class="descriptionPersonal">
                            <li>Argentina</li>
                            <li>7 days</li>
                            <li>2 person</li>
                            <li>Free flight</li>
                            <li>Hotel</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    </div>


</div>
<div class="">
    <div class="circle"><div class="photo"></div> </div>
</div>
</body>
</html>