<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vedant.JobApp.model.JobPost" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Job Post List</title>
<link
     href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css./bootstrap.min.css"
     rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
     crossorigin="anonymous">
<style>
.card {
    border: 2px solid #343a40;
    background-color: #f8f9fa;
    margin-botton: 20px;
}
</style>
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

   <% JobPost myJobPost = (JobPost) request.getAttribute("jobPost");%>
    <!--  request is of type HttpServletRequest. It has a method of getAttribute which returns an object of type "Object".
        Retrieves an Attribute from the Request Scope: request.getAttribute("jobPost") retrieves an object that was previously set in the request scope with the attribute name "jobPost". The request object is an instance of HttpServletRequest, and getAttribute is a method that returns the object associated with the specified attribute name.

        Casts the Retrieved Object: (JobPost) casts the retrieved object to the type JobPost. This is necessary because getAttribute returns an Object, and you need to cast it to the appropriate type to use it as a JobPost.

        Assigns the Casted Object to a Variable: JobPost myJobPost = ... assigns the casted object to the variable myJobPost of type JobPost.

        In summary, this line of code is retrieving a JobPost object from the request scope and casting it to the type JobPost so it can be used within the JSP page. This is typically used in a scenario where a servlet or controller has added the JobPost object to the request scope before forwarding the request to the JSP page. -->

    <div class="container mt-5">
        <h2 class="mb-4 text-center font-weight-bold">Job Details</h2>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card border-dark bg-dark text-white">
                    <div class="card-body">
                        <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                        <p class="card-text">
                            <strong>Description:</strong>
                            <%= myJobPost.getPostDesc() %>
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                            <%= myJobPost.getReqExperience() %> years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack:</strong>
                            <ul>
                                <% for (String tech:myJobPost.getPostTechStack()) { %>
                                <li><%= tech %></li>
                                <% } %>
                            </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <!-- OPTIONAL FOOTER CONTENT -->
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>

