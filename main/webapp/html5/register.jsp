<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/12/2022
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }
        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
</head>
<body >
<form action="/createUser" method="post" class="h-100 bg-dark" style=" ;display: inline-block;width: 100%;background-color: white">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
                <div class="card card-registration my-4">
                    <div class="row g-0">
                        <div class="col-xl-6 d-none d-xl-block">
                            <img src="https://images.unsplash.com/photo-1610847499832-918a1c3c6811?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"
                                 alt="Sample photo" class="img-fluid"
                                 style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                        </div>
                        <div class="col-xl-6" style="display: inline-block">
                            <div class="card-body p-md-5 text-black">
                                <h3 class="mb-5 text-uppercase">User registration form</h3>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="form3Example1m" class="form-control form-control-lg" name="firstName" />
                                            <label class="form-label" for="form3Example1m">First name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="form3Example1n" class="form-control form-control-lg" name="lastName"/>
                                            <label class="form-label" for="form3Example1n">Last name</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="email" id="form3Example9" class="form-control form-control-lg" name="email"/>
                                    <label class="form-label" for="form3Example9">Email</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="number" id="form3Example90" class="form-control form-control-lg" name="phoneNumber" />
                                    <label class="form-label" for="form3Example90">Phone Number</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="password" id="form3Example99" class="form-control form-control-lg" name="password"/>
                                    <label class="form-label" for="form3Example99">Password</label>
                                </div>

                                <div class="d-flex justify-content-end pt-3">
                                    <button type="reset" class="btn btn-light btn-lg">Reset all</button>
                                    <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                </div>


                                <div class="d-flex justify-content-end pt-3" style="float: right">
                                    <a href="/login" class="btn btn-secondary btn-lg ms-2">Back</a>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
</body>
</html>
