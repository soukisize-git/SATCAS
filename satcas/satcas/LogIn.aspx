<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="satcas.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Log In - SATCAS
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <br /><br /><br />
                <div class="row">
                    <div class="col-md-7 col-md-offset-5">
                        <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                        <br /><br />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1 col-md-offset-4">
                        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class ="col-md-1 col-md-offset-4">
                        <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 col-md-offset-5">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Height="40" Width="100%" CssClass="btn btn-temple" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-7 col-md-offset-5">
                        <a href="#">Forgot your password?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
