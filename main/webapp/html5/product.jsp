<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/12/2022
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
  <style>
    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      max-width: 300px;
      margin-left:20px ;
      font-family: arial;
      position: relative;
      float: left;
      display: inline-block;
    }

    .price {
      color: grey;
      font-size: 22px;
    }

    .card button {
      border: none;
      outline: 0;
      padding: 12px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
      font-size: 18px;
    }

    .card button:hover {
      opacity: 0.7;
    }

  </style>
  <link rel="stylesheet" href="/Css/style.css">
  <link rel="stylesheet" href="/themify-icons/themify-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background: url('https://wallpapercave.com/wp/wp5215885.jpg') top center /cover no-repeat">
<div id="header">
  <div id="nav">
    <ul>
      <li><a href="/carHome">Home</a></li>
      <li><a href="carModal?email=${client.email}">Modal</a></li>
      <li>
        <a href="#">Price</a>
        <div class="subnav">
          <ul>
            <li><a href="#">normal</a></li>
            <li><a href="#">Midrange </a></li>
            <li><a href="#">high</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
  <div id="login-icon">
    <ul>
      <li><a href=""><i class="ti-shopping-cart"></i></a></li>
      <li>
        <a href="profile?email=${client.email}" >${client.firstName} ${client.lastName} <i class="setting-login ti-user"></i></a>
      </li>
    </ul>
  </div>
</div>
<div class="container" style="margin-top: 70px">
  <h1 style="text-align: center">List of cars</h1>

  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
  <div class="card col-4">
    <img src="https://c4.wallpaperflare.com/wallpaper/825/184/17/car-vehicle-super-car-supercars-wallpaper-preview.jpg" alt="Denim Jeans" style="width:100%">
    <h1>Tailored Jeans</h1>
    <p class="price">$19.99</p>
    <p>Some text about the jeans..</p>
    <p><button>Add to Cart</button></p>
  </div>
</div>



</body>
</html>
