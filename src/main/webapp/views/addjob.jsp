<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="style1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #e0f7fa, #e1bee7);
        margin: 0;
        padding: 20px;
        color: #333;
    }

    /* Header styles */
    h1 {
        text-align: center;
        margin-top: 0;
        color: #444;
        font-size: 3.5em;
        font-weight: 300;
        letter-spacing: 0.05em;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
    }

    /* Navigation styles */
    .navbar {
        background: rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(10px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        padding: 10px 0;
        text-align: center;
        border-radius: 8px;
        margin-bottom: 20px;
    }

    .navbar .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar-brand {
        color: #444;
        text-decoration: none;
        font-size: 2em;
        font-weight: bold;
        transition: color 0.3s;
    }

    .navbar-brand:hover {
        color: #007bff;
    }

    .nav-links {
        list-style-type: none;
        padding-left: 0;
        display: flex;
    }

    .nav-links li {
        margin-right: 20px;
    }

    .nav-links a {
        text-decoration: none;
        color: #444;
        background-color: rgba(0, 123, 255, 0.1);
        border: 2px solid transparent;
        padding: 8px 16px;
        border-radius: 8px;
        transition: color 0.3s, border-color 0.3s, background-color 0.3s;
    }

    .nav-links a:hover,
    .nav-links a:focus {
        color: #007bff;
        border-color: #007bff;
        background-color: white;
    }

    /* Container styles */
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 0vh;
        padding-top: 60px; /* To avoid header overlap */
        padding-bottom: 60px;
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }

    .card {
        width: 100%;
        max-width: 800px;
        margin: 0 auto;
    }

    /* Form styles */
    form {
        width: 100vh;  /* was 100% */
        
    }

    .form-label {
        font-size: 1.1em;
        color: #333;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
    }

    .form-label i {
        margin-right: 10px;
        color: #007bff;
    }

    .form-control, .form-select {
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 12px;
        margin-bottom: 15px;
        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
        transition: border-color 0.3s, box-shadow 0.3s;
        width: 90vh;
        
    }

    .form-control:focus, .form-select:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    textarea.form-control {
        resize: vertical;
    }

    .btn-primary {
        background: linear-gradient(135deg, #1e88e5, #1565c0);
        border: none;
    }

    .btn-primary:hover {
        background: linear-gradient(135deg, #1565c0, #0d47a1);
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        transform: translateY(-3px);
    }
</style>
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <a href="#" class="navbar-brand">THE JOB PORTAL WEB APP</a>
            <ul class="nav-links">
                <li><a href="/#">HOME</a></li>
                <li><a href="/viewalljobs">ALL JOBS</a></li>
                <li><a href="https://www.linkedin.com/in/vedantgore">CONTACT</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-lg border-light rounded">
                    <div class="card-body">
                        <h2 class="mb-4 text-center fs-4 font-weight-bold text-primary">Post a New Job</h2>
                        <form action="handleForm" method="post">
                            <div class="mb-3">
                                <label for="postId" class="form-label">
                                    <i class="fa fa-id-card"></i> Post ID
                                </label>
                                <input type="text" class="form-control" id="postId" name="postId" required placeholder="Enter Post ID">
                            </div>

                            <div class="mb-3">
                                <label for="postProfile" class="form-label">
                                    <i class="fa fa-user-tie"></i> Post Profile
                                </label>
                                <input type="text" class="form-control" id="postProfile" name="postProfile" required placeholder="Enter Post Profile">
                            </div>

                            <div class="mb-3">
                                <label for="postDesc" class="form-label">
                                    <i class="fa fa-pencil-alt"></i> Post Description
                                </label>
                                <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required placeholder="Describe the job role and responsibilities"></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="reqExperience" class="form-label">
                                    <i class="fa fa-calendar-day"></i> Required Experience (in years)
                                </label>
                                <input type="number" class="form-control" id="reqExperience" name="reqExperience" required placeholder="Enter required experience">
                            </div>

                            <div class="mb-4">
                                <label for="postTechStack" class="form-label">
                                    <i class="fa fa-cogs"></i> Tech Stack
                                </label>
                                <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                                    <!-- Options here -->
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                    <option value="C">C</option>
                                    <option value="Kotlin">Kotlin</option>
                                    <option value="Ruby">Ruby</option>
                                    <option value="Rust">Rust</option>
                                    <option value="PHP">PHP</option>
                                    <option value="HTML5">HTML5</option>
                                    <option value="CSS3">CSS3</option>
                                    <option value="GraphQL">GraphQL</option>
                                    <option value="ExpressJS">ExpressJS</option>
                                    <option value="MongoDB">MongoDB</option>
                                    <option value="ReactJS">ReactJS</option>
                                    <option value="NodeJS">NodeJS</option>
                                    <option value="NextJS">NextJS</option>
                                    <option value="TypeScript">TypeScript</option>
                                    <option value="Arduino">Arduino</option>
                                    <option value="SQL">SQL</option>
                                    <option value="IOT">IOT</option>
                                    <option value="Raspberry Pi">Raspberry Pi</option>
                                    <option value="Go">Go</option>
                                    <option value="Apache Kafka">Apache Kafka</option>
                                    <option value="Apache Maven">Apache Maven</option>
                                    <option value="Python">Python</option>
                                    <option value="Tomcat">Tomcat</option>
                                    <option value="SpringBoot">SpringBoot</option>
                                    <option value="Gradle">Gradle</option>
                                    <option value="Groovy">Groovy</option>
                                    <option value="PL/SQL">PL/SQL</option>
                                    <option value="Flutter">Flutter</option>
                                    <option value="Unity">Unity</option>
                                    <option value="VueJS">VueJS</option>
                                    <option value="AngularJS">AngularJS</option>
                                    <option value="React Native">React Native</option>
                                    <option value="Django">Django</option>
                                    <option value="Flask">Flask</option>
                                    <option value="Kubernetes">Kubernetes</option>
                                    <option value="Docker">Docker</option>
                                    <option value="TensorFlow">TensorFlow</option>
                                    <option value="PyTorch">PyTorch</option>
                                    <option value="Jenkins">Jenkins</option>
                                    <option value="Laravel">Laravel</option>
                                    <option value="AWS">AWS</option>
                                    <option value="Azure">Azure</option>
                                    <option value="Google Cloud">Google Cloud</option>
                                    <option value="Machine Learning">Machine Learning</option>
                                    <option value="Artificial Intelligence">Artificial Intelligence</option>
                                    <option value="Deep Learning">Deep Learning</option>
                                    <option value="Computer Vision">Computer Vision</option>
                                    <option value="Cyber Security">Cyber Security</option>
                                    <option value="Kanban">Kanban</option>
                                    <option value="Agile">Agile</option>
                                    <option value="Scrum">Scrum</option>
                                    <option value="ServiceNow">ServiceNow</option>
                                    <option value="Jira">Jira</option>
                                    <option value="PowerBI">PowerBI</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary w-100 py-2">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- ADD THE BOOTSTRAP JS AND POPPER.JS SCRIPTS -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh950GNyZPhcTNXj1NW7RuBCsyN/oGjlpcV8Qyq46cFfL" crossorigin="anonymous"></script>
</body>
</html>