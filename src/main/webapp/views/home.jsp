<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Job Portal Web App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css./bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">
            <link rel="stylesheet" type="text/css" href="style1.css">
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

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body text-center">
                        <a href="/viewalljobs" class="btn btn-primary">View All Jobs</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body text-center">
                        <a href="/addjob" class="btn btn-primary">Add Jobs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
