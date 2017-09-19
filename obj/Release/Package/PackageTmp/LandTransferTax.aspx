<%@ Page Title="Land Transfer Tax" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandTransferTax.aspx.cs" Inherits="Oksana_4._5._2.LandTransferTax" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid mortgage-results">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-xs-12  ">
                <h1 class="light-text header-wrapper no-height">LAND TRANSFER TAX CALCULATOR</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-3 col-xs-12">
                <label for="purchaseAmt" class="calc-lbl">Purchase Amount</label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <asp:TextBox runat="server" ID="purchaseAmt" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                </div>
                <div class="checkbox-box">
                    <div class="input-group">
                        <asp:CheckBox ID="firstBuyer" runat="server" CssClass="checkbox-inline" Text="I am first time buyer" ClientIDMode="Static" Checked="false" />
                    </div>
                    <div class="input-group">
                        <asp:CheckBox ID="livesinToronto" runat="server" CssClass="checkbox-inline" Text="I live in Toronto" ClientIDMode="Static" Checked="false" />
                    </div>
                </div>
                <asp:Button runat="server" ID="calc_btn" class="btn submit-btn" Text="Calculate" OnClick="calc_btn_Click" />
                <div>
                    <h3>Total Land Transfer Tax: </h3>
                    <asp:Label runat="server" ID="landTransferTax" class="result-lbl" ClientIDMode="Static"></asp:Label>
                </div>

            </div>
            <div class="col-md-5 col-xs-12 col-md-offset-1 last">
                <h3>Land Transfer Tax Details</h3>
                <p><strong>0.5%</strong>: amount on the first $55,000</p>
                <p><strong>1.0%</strong>: amount between $55,000 and $250,000</p>
                <p><strong>1.5%</strong>: amount that exceeds $250,000 including $400,000</p>
                <p><strong>2.0%</strong>: amount which exceeds $400,000</p>
                <p><strong>Qualifying first time buyers receive up to a $4000 credit</strong></p>
                <h3>Toronto Land Transfer Tax Details</h3>
                <p><strong>0.5%</strong>: amount on the first $55,000</p>
                <p><strong>1.0%</strong>: amount between $55,000 and $400,000</p>
                <p><strong>2.0%</strong>: amount which exceeds $400,000</p>
            </div>
        </div>
    </div>
</asp:Content>
