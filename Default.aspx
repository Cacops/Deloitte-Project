<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="Scripts/jquery.nice-select.js"></script>
    <script src="Scripts/controller.js"></script>
    <script src="Scripts/app.js"></script>
</head>
<body class="page-index" ng-app="beerApp">
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
                    <li><a href="#">Beers</a></li>
                    <li><a href="#">Breweries</a></li>
                    <li><a href="#">Submit a Find</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="/Contact.aspx">Contact</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <section class="banner">
        <div class="jumbotron">
            <div class="container-fluid">
                <h2>Discovering beer<br />
                    just got easier.</h2>
                <a href="#" class="btn btn-primary">Learn More</a>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="col-md-6">
                <div class="row">
                    <div class="classWithPad no-padding-left">
                        <h3>You're a couple moments away from getting a beer.</h3>
                        <p>
                            Let's start with some basics. By letting us know a bit about your tastebuds,
                                we'll be able to start gathering the information we need in order to get you
                        a beer. We may even be able to introduce you to something you've never tried
                        before but will love.
                        </p>
                        <p>
                            We're a company who likes beer. We help beer lovers like you find your favorite
                        beers and explore new brews, without the hassle and wait times of your local pub.
                        And since we sell beer directly, we also save you money.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="classWithPad no-padding-right">
                        <form ng-submit="submit(beerForm, '/Default.aspx')" ng-controller="formControllerBeer" id="beerForm" name="beerForm" method="post" novalidate="novalidate">

                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">{{answer.title}}</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>{{answer.message}}</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="form-group">
                                <label for="fav_beer">
                                    What's your favorite beer?
                                </label>
                                <input ng-model="formData.favBeer" type="text" class="form-control" id="favBeer" name="favBeer" placeholder="Jane Doe" required="required" />
                                <span ng-show="(beerForm.favBeer.$touched || beerForm.$submitted) && beerForm.favBeer.$invalid" class="ng-label-invalid">You need to write your favourite beer</span>
                            </div>
                            <div class="form-group">
                                <label for="drink_period">
                                    How many times a week do you drink beer?
                                </label>
                                <select ng-model="formData.drinkPeriod" id="drinkPeriod" name="drinkPeriod" class="nice-select">
                                    <option value="" data-display="Select an option">I don't know</option>
                                    <option value="0">I don't drink bear</option>
                                    <option value="1">Once per week</option>
                                    <option value="2">Two times per week</option>
                                    <option value="3">Three times per week</option>
                                    <option value="4">Four times per week</option>
                                    <option value="5">Five times per week</option>
                                </select>
                            </div>
                            <button ng-model="formData.getAdvice" ng-click="formData.getAdvice=true" type="submit" value="1" name="getAdvice" class="btn btn-primary btn-orange btn-wider">Get Advice</button>
                            <button ng-model="formData.getBeer" ng-click="formData.getBeer=true" type="submit" value="1" name="getBeer" class="btn btn-primary btn-wider">Get a Beer</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="advantages">
        <div class="container-fluid">
            <div class="adv-main text-center">What makes us different?</div>
            <div class="adv-secondary text-uppercase text-center">We're focused on the needs of beer lovers.</div>
            <div class="row">
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>
                                    <div>
                                        <strong>Direct to You</strong>
                                        <div class="img">
                                            <img src="Images/icons/icon-direct-to-you.png" />
                                        </div>
                                        <span>So we can dramatically lower the cost of your beer without compromising quality.</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="pub-less">
                                        <strong>Pub-less</strong>
                                        <div class="img">
                                            <img src="Images/icons/icon-pub-less.png" />
                                        </div>
                                        <span>We're a 21st century company designed to support your digital mobile lifestyle.</span>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <strong>Peace of Mind</strong>
                                        <div class="img">
                                            <img src="Images/icons/icon-peace-of-mind.png" />
                                        </div>
                                        <span>We've partnered with the best micro-breweries with decades of experience.</span>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <strong>Expert Advice</strong>
                                        <div class="img">
                                            <img src="Images/icons/icon-expert-advice.png" />
                                        </div>
                                        <span>We know beer best. We understand how to match you with the right beer at the right price.</span>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="learn-more-block">
                        <a href="#" class="btn btn-primary btn-orange">Learn More</a>
                    </div>

                </div>
            </div>
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
