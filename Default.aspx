<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beer'd</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/Partials/screen.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="row">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img src="Images/logo.png" />
                        </a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="#">Beers</a></li>
                        <li><a href="#">Breweries</a></li>
                        <li><a href="#">Submit a Find</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="/Contact.aspx">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="jumbotron">
            <div class="container-fluid">
                <div class="row">
                    <h1>Discovering beer<br />
                        just got easier.</h1>
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
    </header>


</body>
</html>
