<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/12/2022
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="themify-icons/themify-icons.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #f6d365;

            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
        }
    </style>
    <link rel="stylesheet" href="/Css/style.css">
    <link rel="stylesheet" href="/themify-icons/themify-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
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
                <a href="/profile" >${client.firstName} ${client.lastName} <i class="setting-login ti-user"></i></a>
            </li>
        </ul>
    </div>
</div>
<section class="vh-100" style="background-color: #f4f5f7;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-lg-6 mb-4 mb-lg-0">
                <div class="card mb-3" style="border-radius: .5rem;">
                    <div class="row g-0">
                        <div>

                        </div>
                        <div class="col-md-4 gradient-custom text-center text-white"
                             style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
<%--                            <button  class="btn btn-dark"--%>
<%--                                     style="list-style-type: none;float: left;"><a href="/carHome" style="text-decoration: none;color: white">--%>
<%--                                Back</a></button>--%>

                                <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"
                                     alt="Avatar" class="img-fluid my-5" style="width: 80px;" />

<%--                            <c:if test="${client.img!=null}">--%>
<%--                                <img src="${client.img}" alt="Avatar" class="img-fluid my-5" style="width: 80px;">--%>
<%--                            </c:if>--%>


                            <h5>${client.firstName} ${client.lastName}</h5>
                            <p>Client</p>
                            <i class="far fa-edit mb-5"></i>

                        </div>
                        <div class="col-md-8">
                            <div class="card-body p-4">
                                <h6>Information</h6>
                                <hr class="mt-0 mb-4">
                                <div class="row pt-1">
                                    <div class="col-6 mb-3">
                                        <h6></h6>
                                        <p class="text-muted">${client.email}</p>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <h6>Phone</h6>
                                        <p class="text-muted">${client.phoneNumber}</p>
                                    </div>
                                </div>
                                <h6>Projects</h6>
                                <hr class="mt-0 mb-4">
                                <div class="row pt-1">
                                    <div class="col-6 mb-3">
                                        <h6>Recent</h6>
                                        <p class="text-muted">Lorem ipsum</p>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <h6>Most Viewed</h6>
                                        <p class="text-muted">Dolor sit amet</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-start">
                                    <a href="https://www.facebook.com/"><i class="fab ti-facebook fa-lg me-3"></i></a>
                                    <a href="https://twitter.com/?lang=vi"><i class="fab ti-twitter fa-lg me-3"></i></a>
                                    <a href="https://www.instagram.com/"><i class="fab ti-instagram fa-lg"></i></a>
                                </div>
                                <div>

                                </div>
                                <div>
                                    <button type="button" class="btn btn-danger" style="float: right">
                                        <a href="/login" style="text-decoration: none;color: white">Log out</a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
