<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beer'd</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/Plugins/nice-select.css" />
    <link rel="stylesheet" href="Styles/Partials/screen.min.css" />
    <link rel="stylesheet" href="Styles/Partials/responsive.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4YQVX6W2yMKMdMI9OfSQ_uwdm0iMjIBs"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="Scripts/jquery.nice-select.js"></script>
    <script src="Scripts/jquery.nice-select.js"></script>
    <script src="Scripts/gmaps.js"></script>
    <script src="Scripts/controller.js"></script>
    <script src="Scripts/app.js"></script>
</head>
<body class="page-contact">
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/Default.aspx">
                        <h1>Beer'd</h1>
                        <img src="Images/logo.png" />
                    </a>
                </div>
                <div class="respo-menu-btn">
                    <div class="respo-menu-btn-in"></div>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="/Default.aspx">Beers</a></li>
                    <li><a href="#">Breweries</a></li>
                    <li><a href="#">Submit a Find</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="/Contact.aspx">Contact</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <section class="content">
        <div class="container-fluid address-block">
            <h2>Contact</h2>
            <div class="col-md-4">
                <div class="row">
                    <div class="classWithPad no-padding-left">
                        <div class="address">
                            <h3>Address</h3>
                            12345 Fremont Ave., Suite 1001<br />
                            Seattle<br />
                            WA 98100
                        </div>
                        <div class="email">
                            beer@company.eu
                        </div>
                        <div class="mobile">
                            777 999 333
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="classWithPad no-padding-right">
                        <div id="gMap"></div>
                        <script>gMapInit();</script>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid writeUs-block">
            <form id="contactForm" method="post">
                <h3>Write to us</h3>
                <div class="col-md-6">
                    <div class="row">
                        <div class="classWithPad no-padding-left">

                            <div class="form-group">
                                <label for="contactName">
                                    Name and surname:<span class="req">*</span>
                                </label>
                                <input type="text" class="form-control" id="contactName" name="contactName" placeholder="Name and Surname" />
                            </div>
                            <div class="form-group">
                                <label for="contactEmail">
                                    E-mail:<span class="req">*</span>
                                </label>
                                <input type="text" class="form-control" id="contactEmail" name="contactEmail" placeholder="E-mail" />
                            </div>
                            <div class="form-group">
                                <label for="contactMobile">
                                    Mobile:
                                </label>
                                <span class="question-info" data-id="#answerMobile"></span>
                                <span id="answerMobile" class="answer-info">We preffer more personal contact, but do not keen on that.
                                </span>
                                <input type="text" class="form-control" id="contactMobile" name="contactMobile" placeholder="Mobile" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="classWithPad no-padding-right">
                            <div class="form-group">
                                <label for="contactText">
                                    Message:<span class="req">*</span>
                                </label>
                                <textarea class="form-control" id="contactText" name="contactText" placeholder="Enter message here."></textarea>
                            </div>
                            <button type="submit" name="send" class="btn btn-primary btn-orange btn-wider float-right">Send</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>


    </section>

    <footer>
        <div class="container-fluid">
            <div class="float-left">
                <div class="contact-address">
                    12345 Fremont Ave., Suite 1001, Seattle, WA 98100
                </div>
                <div class="copyright">
                    Copyright © 2013 Beer'd, Inc.
                </div>
            </div>
            <div class="float-right">
                <img src="Images/footer-graphic.png" />
            </div>
        </div>
        <br class="clear" />
    </footer>

</body>
</html>
