<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Oksana_4._5._2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row centered">
            <h1 class="light-text">CONTACT</h1>
            <h2 class="slight-text">Get in touch!</h2>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-3 col-xs-12">
                <label class="calc-lbl" for="fName">First Name</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="fName" placeholder="John" />
                <label class="calc-lbl" for="lName">Last Name</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="lName" type="text" placeholder="White" />
                <label class="calc-lbl" for="telNum">Phone</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="telNum" type="tel" placeholder="(905) 905-9055" />
                <label class="calc-lbl" for="commentsTxt">Additional Comments</label>
                <asp:TextBox runat="server" CssClass="form-control comments" ID="commentTxt" TextMode="MultiLine" Rows="5" placeholder="Please type any additional comments here..."></asp:TextBox>
                <asp:Button ID="sendEmail" type="submit" value="Send" CssClass="btn submit-btn contact" Text="Send" runat="server" OnClick="sendEmail_Click"></asp:Button>
            </div>


            <div class="col-md-5 col-md-offset-1 col-xs-12">
                <h3 class="light-text">Oksana Bratkov</h3>
                <h4 class="light-text">Sales representative</h4>
                <div class="marginzero">
                    <p>
                        Right At Home Realty Inc.,
                        <br>
                        Brokerage
                    </p>
                    <p>480 Eglinton Ave West 30</p>
                    <p>Mississauga, Ontario L5R0G2</p>
                    <p>Cell: <a href="tel:(416)629-8661">(416)629-8661</a></p>
                    <p>Office: <a href="tel:(905)-565-9200">(905)-565-9200</a></p>
                    <p>Email: <a href="mailto:oksana_ca@hotmail.com">oksana_ca@hotmail.com</a></p>
                </div>
            </div>
        </div>
        <div class="row last">
            <div class="map col-md-6 col-md-offset-3 col-xs-10 col-xs-offset-1" id="map"></div>
        </div>
    </div>
</asp:Content>
