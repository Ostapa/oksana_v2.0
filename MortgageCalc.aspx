<%@ Page Title="Mortgage Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MortgageCalc.aspx.cs" Inherits="Oksana_4._5._2.MortgageCalc" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-xs-12  ">
                <h1 class="light-text header-wrapper no-height">MORTGAGE CALCULATOR</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-xs-12">
                <h2>Overview</h2>
                <p>Mortgage loan is in demand when it comes to purchase of home or another type of property. It is a special type of loan unique to property purchases and usually has lower interest rate in comparison with other loans. The reason for such rates is in its secure process. Most likely bank or other lender has a right to seize the house or property if the borrower fails to pay back. As a result, it is quite important to find the best rate so that you would be able to keep up with your monthly pay and pay back the full amount in a reasonable period of time. </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-3 col-xs-12">
                <label for="amount" class="calc-lbl">Mortgage Amount</label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <asp:TextBox runat="server" ID="mortgageAmount" class="form-control" ClientIDMode="Static"></asp:TextBox>
                </div>
                <label for="month-rate" class="calc-lbl">Monthly Rate</label>
                <div class="input-group">
                    <span class="input-group-addon">%</span>
                    <asp:TextBox runat="server" ID="monthRate" type="text" class="form-control" ClientIDMode="Static" />
                </div>
                <label for="down-payment" class="calc-lbl">Down Payment Amount</label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <asp:TextBox runat="server" ID="downPayment" type="text" class="form-control" ClientIDMode="Static" />
                </div>
                <label for="property-tax" class="calc-lbl">Annual Property Tax</label>
                <div class="input-group">
                    <span class="input-group-addon">%</span>
                    <asp:TextBox runat="server" ID="propertyTax" type="text" class="form-control" ClientIDMode="Static" />
                </div>
                <label for="mortgage-period" class="calc-lbl">Mortgage Period</label>
                <asp:DropDownList runat="server" ID="mortgagePeriod" class="form-control" ClientIDMode="Static">
                    <asp:ListItem Value="5" Text="5 years"></asp:ListItem>
                    <asp:ListItem Value="10" Text="10 years"></asp:ListItem>
                    <asp:ListItem Value="15" Text="15 years"></asp:ListItem>
                    <asp:ListItem Value="20" Text="20 years"></asp:ListItem>
                    <asp:ListItem Value="25" Text="25 years"></asp:ListItem>
                    <asp:ListItem Value="30" Text="30 years"></asp:ListItem>
                    <asp:ListItem Value="35" Text="35 years"></asp:ListItem>
                    <asp:ListItem Value="40" Text="40 years"></asp:ListItem>
                </asp:DropDownList>
            <button runat="server" id="calc_btn" class="btn submit-btn last" onclick="return calcMortgage()">Calculate</button>

            </div>
            <div class="mortgage-results col-md-4 col-md-offset-1 col-xs-12 last">
                <h3>Mortgage Results</h3>
                <asp:Label runat="server" ID="monthlyPayment" class="result-lbl" ClientIDMode="Static"></asp:Label><br />
                <asp:Label runat="server" ID="totalPayment" class="result-lbl" ClientIDMode="Static"></asp:Label><br />
                <h3>Mortgage Details</h3>
                <p><strong>Monthly Payment</strong>: amount you are going to pay every month. This payment includes your annual property tax</p>
                <p><strong>Prinicipal Amount</strong>: the amount of your loan after downpayment</p>
                
                <h3>Disclaimer</h3>
                <p>All the results and calculations are estimate and not guaranteed by any party. For more details and better consultation on your mortgage please contact me and I will provide you with all required information.</p>
            </div>
        </div>
    </div>
</asp:Content>
