
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Image Slider</title>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<%--    <link rel="stylesheet" th:href="@{/css/style.css}">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css">
</head>
<body>


<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
<!--image slider start-->



<nav class="navbar">

    <h1 class="logo">SkyLand</h1>

    <ul class="nav-links">
        <li id="aboutUs"><a href="AboutUsPage.html">About us</a></li>
        <li><a href="login-page.jsp">Sign in</a> </li>
        <li><a href="#"></a> | </li>
        <li><a href="RegisterPage.html">Sign up</a></li>
        <li id="userAccount"><a href="UserPage.html"></a></li>

    </ul>
</nav>
<div class="slider">
    <div class="slide current">
        <div class="content">
            <h1 class="title"> Venice</h1>

            <ul class="conditions">
                <li>Free food</li>
                <li>Two person</li>
                <li>Without children</li>
                <li>Italy, Venice</li>
                <li>Hotel <a id="stars"></a></li>
                <li>7 days</li>

            </ul>
            <div class="PriceAndButton">
                <button class="moreInfo">More</button>
                <p class="price">$1099.99</p>

            </div>
        </div>
    </div>
    <div class="slide">
        <div class="content">
            <h1 class="title">Amsterdam</h1>
            <ul class="conditions">
                <li>Free food</li>
                <li>Two person</li>
                <li>Without children</li>
                <li>Italy, Venice</li>
                <li>Hotel <a id="stars"></a></li>
                <li>7 days</li>

            </ul>
            <div class="PriceAndButton">
                <button class="moreInfo">More</button>
                <p class="price">$1099.99</p>

            </div>
        </div>
    </div>
    <div class="slide">
        <div class="content">
            <h1 class="title">Tenerife</h1>
            <ul class="conditions">
                <li>Free food</li>
                <li>Two person</li>
                <li>Without children</li>
                <li>Italy, Venice</li>
                <li>Hotel <a id="stars"></a></li>
                <li>7 days</li>

            </ul>
            <div class="PriceAndButton">
                <button class="moreInfo">More</button>
                <p class="price">$1099.99</p>

            </div>
        </div>
    </div>
    <div class="slide">
        <div class="content">
            <h1 class="title">Los Angeles</h1>
            <ul class="conditions">
                <li>Free food</li>
                <li>Two person</li>
                <li>Without children</li>
                <li>Italy, Venice</li>
                <li>Hotel <a id="stars"></a></li>
                <li>7 days</li>

            </ul>
            <div class="PriceAndButton">
                <button class="moreInfo">More</button>
                <p class="price">$1099.99</p>

            </div>
        </div>
    </div>
    <div class="slide">
        <div class="content">
            <h1 class="title">Kyoto</h1>
            <ul class="conditions">
                <li>Free food</li>
                <li>Two person</li>
                <li>Without children</li>
                <li>Italy, Venice</li>
                <li>Hotel <a id="stars"></a></li>
                <li>7 days</li>

            </ul>
            <div class="PriceAndButton">
                <button class="moreInfo">More</button>
                <p class="price">$1099.99</p>

            </div>
        </div>
    </div>

</div>
<div class="buttons">
    <button style="background: url('left.png'); background-size:cover";   id="prev"></button>
    <button style="background: url('right.png'); background-size:cover" id="next"></button>
</div>
<%--<script src="js/main.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

<div class="search-filters">

    <div class="filter-title">
        <h2>Choose the tour of your dream</h2>
    </div>

    <div class="div-filters">
        <div id="first-column">
            <div><label class="text-input">Adults: </label> <input  type="number" class="input-filters" ></div>
            <div><label class="text-input">Children: </label><input type="number" class="input-filters"></div>
        </div>

        <div id="second-column">
            <div><label class="text-input">Duration: </label><span  id="duration-margin"> <input  type="date" class="duration-id"> <input type="date" class="duration-id"></span></div>

            <div>

                <label class="text-input">Country: </label><select class="input-filters" id="filterByColor" onchange="searchFilter()">
                <option value="" selected>Choose country</option>
                <option value="Ukraine">Ukraine</option>
                <option value="Japan">Japan</option>
                <option value="USA">USA</option>
                <option value="Norway">Norway</option>
                <option value="Turkey">Turkey</option>
                <option value="United Kingdom">United Kingdom</option>
                <option value="France">France</option>
                <option value="Spain">Spain</option>
                <option value="Poland">Poland</option>
                <option value="Israel">Israel</option>
                <option value="Tailand">Tailand</option>
                <option value="Canada">Canada</option>
                <option value="Italy">Italy</option>
                <option value="Switzerland">Switzerland</option>  </select>
            </div>

        </div>

        <div id="third-column">

            <div class="wrapper">

                <div class="price-input">
                    <div class="field">
                        <span><nobr>Price: min </nobr></span>
                        <input type="number" class="input-min" value="2500">
                    </div>
                    <div class="separator">-</div>
                    <div class="field">
                        <span>max:</span>
                        <input type="number" class="input-max" value="7500">
                    </div>
                </div>
                <div class="slider_">
                    <div class="progress"></div>
                </div>
                <div class="range-input">
                    <input type="range" class="range-min" min="0" max="10000" value="2500" step="100">
                    <input type="range" class="range-max" min="0" max="10000" value="7500" step="100">
                </div>
            </div>
            <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>

        </div>

        <div id="forth-column">

            <div>
                <label class="text-input2">Hotel star rating: </label>
            </div>

            <div class="rating">
                <input type="radio" name="star" id="star1" ><label for="star1"></label>
                <input type="radio" name="star" id="star2" ><label for="star2"></label>
                <input type="radio" name="star" id="star3" ><label for="star3"></label>
                <input type="radio" name="star" id="star4" ><label for="star4"></label>
                <input type="radio" name="star" id="star5" ><label for="star5"></label>
            </div>

        </div>
    </div>

    <div class="search-button-container">
        <button class="search-button">Search</button>
    </div>

</div>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<div class="rectangle" >
    <input  type="text" id="search" placeholder="">
    <p class="above-search">If you didn’t find necessary information, enter what you want here</p>

</div>

<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">Europe</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/Europe/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">Paris</h2>
                    <ul class="description">
                        <li>France</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$999.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Amsterdam</h2>
                    <ul class="description">
                        <li>Netherlands</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$769.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">London</h2>
                    <ul class="description">
                        <li>United Kingdoms</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1199.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Dinan</h2>
                    <ul class="description">
                        <li>France</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1349.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Firenze</h2>
                    <ul class="description">
                        <li>Italy</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Dnipro</h2>
                    <ul class="description">
                        <li>Ukraine</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$699.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Wengen</h2>
                    <ul class="description">
                        <li>Switzerland</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1459.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Kyiv</h2>
                    <ul class="description">
                        <li>Ukraine</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1349.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">València</h2>
                    <ul class="description">
                        <li>Spain</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Europe/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Lviv</h2>
                    <ul class="description">
                        <li>Ukraine</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$499.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">South America</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/South America/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">Buenos Aires</h2>
                    <ul class="description">
                        <li>Argentina</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Aruba</h2>
                    <ul class="description">
                        <li>Aruba</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1599.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Aguas Calientes</h2>
                    <ul class="description">
                        <li>Peru</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1789.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Uyuni Salt Flat</h2>
                    <ul class="description">
                        <li>Bolivia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1799.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Rio de Janeiro</h2>
                    <ul class="description">
                        <li>Brazil</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1189.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Aragua</h2>
                    <ul class="description">
                        <li>Venezuela</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1499.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Quito</h2>
                    <ul class="description">
                        <li>Ecuador</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1489.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Eagle Beach Strip</h2>
                    <ul class="description">
                        <li>Aruba</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1399.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Neuquen</h2>
                    <ul class="description">
                        <li>Argentina</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1799.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/South America/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Arraial do Cabo</h2>
                    <ul class="description">
                        <li>Brasil</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1199.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">North America</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/North America/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">Teotihuacan</h2>
                    <ul class="description">
                        <li>Mexico</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1099.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Vancouver</h2>
                    <ul class="description">
                        <li>Canada</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1129.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Los Angeles</h2>
                    <ul class="description">
                        <li>USA</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1789.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">New York</h2>
                    <ul class="description">
                        <li>USA</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1999.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Toronto</h2>
                    <ul class="description">
                        <li>Canada</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1239.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Colorado</h2>
                    <ul class="description">
                        <li>USA</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1679.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Las Vegas</h2>
                    <ul class="description">
                        <li>USA</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$2599.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Manuel Antonio</h2>
                    <ul class="description">
                        <li>Costa Rica</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1999.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Washington</h2>
                    <ul class="description">
                        <li>USA</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$2899.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/North America/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Playa Costa Esmeralda</h2>
                    <ul class="description">
                        <li>Republica Dominicana</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$2199.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>


</div>
-------------------------
<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">Asia</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/Asia/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">Marina Bay Sands</h2>
                    <ul class="description">
                        <li>Singapore</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1099.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Khao Sok</h2>
                    <ul class="description">
                        <li>Thailand</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1399.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Tel Aviv</h2>
                    <ul class="description">
                        <li>Israel</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1799.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Gerandi Ella Falls</h2>
                    <ul class="description">
                        <li>Sri Lanka</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1659.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Hurawalhi Island</h2>
                    <ul class="description">
                        <li>Maldives</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1239.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Tokio</h2>
                    <ul class="description">
                        <li>Japan</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1199.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Ghandruk</h2>
                    <ul class="description">
                        <li>Nepal</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1459.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Beijing</h2>
                    <ul class="description">
                        <li>China</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1349.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Hong Kong</h2>
                    <ul class="description">
                        <li>China</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Asia/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Kyoto</h2>
                    <ul class="description">
                        <li>Japan</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1019.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>




</div>

<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">Africa</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/Africa/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">La Digue</h2>
                    <ul class="description">
                        <li>Seychelles</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1199.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Giza</h2>
                    <ul class="description">
                        <li>Egypt</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1499.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Johannesburg</h2>
                    <ul class="description">
                        <li>South Africa</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1789.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Madagascar</h2>
                    <ul class="description">
                        <li>Madagascar</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1999.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Zanzibar</h2>
                    <ul class="description">
                        <li>Tanzania</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Maputo</h2>
                    <ul class="description">
                        <li>Mozambique</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$999.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Amboseli National Park</h2>
                    <ul class="description">
                        <li>Kenya</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1499.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Tamnougalt</h2>
                    <ul class="description">
                        <li>Morocco</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1349.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Karthago</h2>
                    <ul class="description">
                        <li>Tunesien</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1289.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Africa/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Cape Town</h2>
                    <ul class="description">
                        <li>South Africa</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1769.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>




</div>

<div class="travel-sliders">

    <div class="travel">
        <h3 class="direction">Australia</h3>
        <div class="line"></div>

        <div class="travel-container">
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="travel-card">
                <div class="travel-image">

                    <img src="img/Australia/card1.png" >
                </div>
                <div class="travel-info">
                    <h2 class="name">Clifton</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1099.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card2.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Perth WA</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$2599.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card3.png" class="product-thumb" alt="">
                </div>
                <div class="travel-info">
                    <h2 class="name">Melbourne</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$4789.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card4.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Petermann</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$3789.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Newport</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$3299.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Brisbane</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$3199.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Port Noarlunga SA</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$4499.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Bondi Beach</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1340.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card9.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Melbourne VIC</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1290.99</p>
                    </div>
                </div>
            </div>
            <div class="travel-card">
                <div class="travel-image">
                    <img src="img/Australia/card10.png" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="travel-info">
                    <h2 class="name">Sunshine Coast QLD</h2>
                    <ul class="description">
                        <li>Australia</li>
                        <li>7 days</li>
                        <li>2 person</li>
                        <li>Free flight</li>
                        <li>Hotel</li>
                    </ul>
                    <div class="PriceAndButtonDark">
                        <button class="moreInfoDark">More</button>
                        <p class="price-dark">$1010.99</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="${pageContext.request.contextPath}/resources/js/sliders.js"></script>

</div>
</div>
<div class="footer-container">
    <div class="footer">
        <div class="footer-heading footer-1">
            <h3>Company</h3>
            <a href="#"></a>
            <a href="#">Terms</a>
            <a href="#">Privacy</a>
            <a href="#">Get help</a>
        </div>
        <div class="footer-heading footer-2">
            <h3>Travel</h3>
            <a href="#">Europe</a>
            <a href="#">South America</a>
            <a href="#">North America</a>
            <a href="#">Asia</a>
            <a href="#">Africa</a>
            <a href="#">Australia</a>
        </div>
        <div class="footer-heading footer-3">
            <h3>Contact Us</h3>
            <a href="#">+38 095 111 0428</a>
            <a href="#">+38 095 768 6967</a>
            <a href="#">@skyland.gmail.com</a>
        </div>
        <div class="footer-email-form">
            <h3>Join our newsletter</h3>
            <input type="email" placeholder="Enter your email address" id="footer-email">
            <input type="submit" value="Sign up" id="footer-email-btn">
        </div>

    </div>

</div>
</body>
</html>