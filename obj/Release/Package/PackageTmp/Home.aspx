<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Oksana_4._5._2.Home" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container-fluid centered">
        <h1 class="mobile-header  light-text visible-xs">SELL AND BUY WITH OKSANA</h1>
        <div class="row header home-back hidden-xs">
            <div class="header-wrapper col-sm-12 ">
                <h1 class="light-text">SELL AND BUY WITH OKSANA</h1>
                <div class="get-started">
                    <button id="skipBtn" runat="server" class="get-started-btn center-block" onclick="return skipHeader()">Get Started</button>
                </div>
            </div>
        </div>
        <div id="intro row" class="header-bio light-text ">
            <img class="bio-image" src="Images/oksana_portrait.jpg" alt="Image of the Realtor" />
            <h1 class="light-text"><span class="name light-text">Oksana</span><br />
                B R A T K O V</h1>
            <h2 class="light-text">Sales representative</h2>
            <p>Right At Home Realty Inc., Brokerage</p>
            <p>480 Eglinton Ave West</p>
            <p>Mississauga, Ontario L5R 0G2</p>
            <p>Cell: <a href="(416)629-8661">(416)629-8661</a></p>
            <p>Office: <a href="tel:(905)-565-9200">(905)565-9200</a></p>
            <p>Email: <a href="mailto:oksana_ca@hotmail.com">oksana_ca@hotmail.com</a></p>
        </div>
        <div class="intro row">
            <div class="col-md-10 col-md-offset-1 col-xs-12">
                <h1 class="light-text">SELLING AND BUYING WITH OKSANA</h1>
                <p>Top quality service and successful results are the basis of my work. I am always ready to cooperate with my clients and help them out in all cases. This website is created for you to find all listing information, selling guides, buying guides, mortgage calculator and other data that will assist you to orientate on the real estate market. Let's cooperate together and you will never regret about your choice! My dedication to work and respect to the customer will prove that!</p>
            </div>
        </div>
        <div class="features-wrapper row">
            <div class="features">
                <a href="Listings.aspx">
                    <div class="feature col-md-4 col-xs-12">
                        <img class="feature-icon" src="Images/Icons/search.png" alt="home-icon" />
                        <h3 class="light-text">Find a Perfect Home</h3>
                        <p>Fill out the form and I will assist you in finding your dream home</p>
                    </div>
                </a>
                <a href="MortgageCalc.aspx">
                    <div class="feature col-md-4 col-xs-12">
                        <img class="feature-icon" src="Images/Icons/mortgage.png" alt="calc-icon" />
                        <h3 class="light-text">Mortgage Calculator</h3>
                        <p>Get an estimate amount you need to spend on mortgage</p>
                    </div>
                </a>
                <a href="LandTransferTax.aspx">
                    <div class="feature col-md-4 col-xs-12">
                        <img class="feature-icon" src="Images/Icons/land.png" alt="home-icon" />
                        <h3 class="light-text">Land Transfer Tax Calculator</h3>
                        <p>Use land transfer calculator to offset unwelcome cost</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</asp:Content>
