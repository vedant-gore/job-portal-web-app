<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Job Post List</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <nav class="navbar">
            <div class="container">
                <strong><h2><a href="#" class="navbar-brand">THE JOB PORTAL WEB APP</a></h2></strong>
                <ul class="nav-links">
                    <li><a href="/#">HOME</a></li>
                    <li><a href="/viewalljobs">ALL JOBS</a></li>
                    <li><a href="https://www.linkedin.com/in/vedantgore">CONTACT</a></li>
                </ul>
            </div>
    </nav>

    <div class="container mt-5">
        <h2 class="mb-4 text-center front-weight-bold">JOB POST LIST</h2>
        <div class="row row-cols-2">
            <c:forEach var="jobPost" items="${jobPosts}">

                <div class="col mb-4">
                    <div class="card border-dark bg-dark text-white">
                        <div class="card-body">
                            <h5 class="card-title">${jobPost.postProfile}</h5>
                            <p class="card-text">
                                <strong>Description:</strong>
                                    ${jobPost.postDesc}</p>
                            <p class="card-text">
                                <strong>Experience Required:</strong>
                                    ${jobPost.reqExperience}
                                years
                            </p>
                            <p class="card-text">
                                <strong>Tech Stack:</strong>
                            <ul>
                                <c:forEach var="tech" items="${jobPost.postTechStack}">
                                    <li>${tech}</li>
                                </c:forEach>
                            </ul>
                            </p>
                        </div>
                        <div class="card-footer">
                            <!-- OPTIONAL FOOTER CONTENT -->
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>

