<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Welcome</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Law Firm Website Template" name="keywords">
        <meta content="Law Firm Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css?ver=1.2.1">
    </head>

    <body>
    <h2 style: text-align: center">Welcome, ${email }</h2>
        <div class="wrapper">
            <!-- Top Bar Start -->
            <div class="top-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="index.html">
                                    <h1>Democratic Binder</h1>
                                    <br>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="top-bar-right">
                                <div class="social">
                                    <a href="/newquiz">Quiz</a>
                                    <a href="/logout">Logout</a>
                                    <%-- <a ><%=session.getAttribute(${email})%></a> --%>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>        
                            
            
            
            <!-- Carousel Start -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/images/extra.jpg?ver=1.2.1" alt="Carousel Image">
                        <div class="carousel-caption">
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/quote.jpg?ver=1.2.1" alt="Carousel Image">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/back.jpg?ver=1.2.1" alt="Carousel Image">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- Carousel End -->
            
            
            <!-- Top Feature Start-->
            <div class="feature-top">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-check-circle"></i>
                                <h3>Fundemantal Rights</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="fa fa-user-tie"></i>
                                <h3>Citizenship</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-thumbs-up"></i>
                                <h3>Independent Judiciary</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-handshake"></i>
                                <h3>Division of powers</h3>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Feature End-->
            
            
            <!-- About Start -->
            <div class="about">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="about-img">
                                <img src="https://emerging-europe.com/wp-content/uploads/2017/12/bigstock-178701754-e1512749165168.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="section-header">
                                <h2>Learn About Us</h2>
                            </div>
                            <div class="about-text">
                                <p>
                                    The Constitution of India is the supreme law of India.The document lays down the framework that demarcates fundamental political code, structure, procedures, powers, and duties of government institutions and sets out fundamental rights, directive principles, and the duties of citizens. It is the longest written constitution of any country.

It imparts constitutional supremacy and was adopted by its people with a declaration in its preamble.Parliament cannot override the constitution.
                                </p>
                                <p>
                                    It was adopted by the Constituent Assembly of India on 26 November 1949 and became effective on 26 January 1950.The constitution replaced the Government of India Act 1935 as the country's fundamental governing document, and the Dominion of India became the Republic of India. To ensure constitutional autochthony, its framers repealed prior acts of the British parliament in Article 395.India celebrates its constitution on 26 January as Republic Day.

The constitution declares India a sovereign, socialist, secular,[12] and democratic republic, assures its citizens justice, equality and liberty, and endeavours to promote fraternity.The original 1950 constitution is preserved in a helium-filled case at the Parliament House in New Delhi. The words "secular" and "socialist" were added to the preamble by 42nd amendment act in 1976, during the Emergency.
                                </p>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Service Start -->
            <div class="service">
                <div class="container">
                    <div class="section-header">
                        <h2>Features</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-landmark"></i>
                                </div>
                                <h3>Amendments</h3>
                                <p>
                                    Amending the Constitution of India is the
						process of making changes to the nation's fundamental law or
						supreme law
                                </p>
                                <a class="btn" href="/amendments">Visit</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-users"></i>
                                </div>
                                <h3>Schedules</h3>
                                <p>
                                    Schedules are basic tables which contains
						additional details not mentioned in the articles.We
					 originally had eight schedules
                                </p>
                                <a class="btn" href="/schedules">Visit</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-hand-holding-usd"></i>
                                </div>
                                <h3>Parts</h3>
                                <p>
                                    Genarlly articles created by Indian
						constitution.It contains 395 articles in Parts I to XXII and 12
						schedules.Some were added later.
                                </p>
                                <a class="btn" href="/parts">Visit</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-graduation-cap"></i>
                                </div>
                                <h3>Preamble</h3>
                                <p>
                                    A
						preamble is an introductory statement in a document that explains
						the document's philosophy and objectives</p>
                                <a class="btn" href="/preamble">Learn More</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-gavel"></i>
                                </div>
                                <h3>Articles</h3>
                                <p>
                                    Constitution of India contains 395 articles in 22 parts. Additional articles and parts are inserted later through various amendments
                                </p>
                                <a class="btn" href="/articles">Visit</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fa fa-globe"></i>
                                </div>
                                <h3>Rights</h3>
                                <p>
                                    When the right is given to the person then it is assumed that certain duties are also imposed on the person.The basic freedom given to one person.
                                </p>
                                <a class="btn" href="/rights">Visit</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service End -->
            
  
            
           


            <!-- FAQs Start -->
            <div class="faqs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="faqs-img">
                                <img src="${pageContext.request.contextPath}/images/lion.jpg?ver=1.2.1" alt="Image">
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="section-header">
                                <h2>Fun Facts</h2>
                            </div>
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
                                            <span>1</span> President's Resignation !!
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            The President gives his resignation to the vice president.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseTwo">
                                            <span>2</span> Prime Minister Age Requirements ?
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            The minimum age required for becoming the Prime Minister of India is 25 years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseThree">
                                            <span>3</span> Constitution drafting...
                                        </a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            The process took 2 years, 11 months and 18 days and at a total expenditure of Rs.6.4 million to finish.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseFour">
                                            <span>4</span> Is it typed or Printed? 
                                        </a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            The Constitution of India is neither printed nor typed. It is handwritten and calligraphed in both 
 Hindi and English. It was handwritten by Prem Behari Narain Raizada and was published 
 in Dehradun by him.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseFive">
                                            <span>5</span> Proud Moment....
                                        </a>
                                    </div>
                                    <div id="collapseFive" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                             Constitution of India is the world's longest constitution.
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
    
     

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
    

