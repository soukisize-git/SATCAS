<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="satcas.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin Dashboard - SATCAS
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="container-fluid">
        <br />
        <br />
        <div class="row">
            <div class="col-md-12">
                <div style="padding-left: 20px">
                    <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome, Michelle Isel-Margolis" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Term: " Font-Bold="True"></asp:Label>&nbsp
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
                        <asp:ListItem>Fall 2017</asp:ListItem>
                        <asp:ListItem>Spring 2017</asp:ListItem>
                        <asp:ListItem>Fall 2016</asp:ListItem>
                        <asp:ListItem>Spring 2016</asp:ListItem>
                        <asp:ListItem>Fall 2015</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <div style="float: right; padding-right: 20px">
                    <asp:Button ID="btnDashboard" runat="server" Text="Dashboard" Width="120px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button runat="server" Text="Manage User" Width="120px" Height="40px" ID="btnFindCourse" CssClass="btn btn-temple" />
                    <asp:Button ID="btnAddCourse" runat="server" Text="Manage Student" Width="130px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button ID="btnRoster" runat="server" Text="Logout" Width="120px" Height="40px" CssClass="btn btn-temple" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab">
                    <h4>View User</h4>
                    <div class="tab-content">
                        <br />
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 40px; overflow: auto">
                                <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="TUid" HeaderText="TUid">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name">
                                        <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" HorizontalAlign="Center" Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Type" HeaderText="User Type">
                                        <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="200px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="College" HeaderText="College">
                                            <HeaderStyle CssClass="text-center" Width="300px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Department" HeaderText="Department">
                                        <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Status">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <asp:Button ID="Button6" runat="server" Text="Edit" CssClass="ddl" />
                                            </ItemTemplate>
                                            <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="75px" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab">
                    <h4>View Student</h4>
                    <div class="tab-content">
                        <br />
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 40px; overflow: auto">
                                <asp:Label ID="Label2" runat="server" Text="Term: " Font-Bold="True"></asp:Label>&nbsp
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                                    <asp:ListItem>Fall 2017</asp:ListItem>
                                    <asp:ListItem>Spring 2017</asp:ListItem>
                                    <asp:ListItem>Fall 2016</asp:ListItem>
                                    <asp:ListItem>Spring 2016</asp:ListItem>
                                    <asp:ListItem>Fall 2015</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 40px; overflow: auto">
                                <asp:Button ID="Button1" runat="server" Text="Completed" Width="120px" Height="40px" CssClass="btn btn-temple" />
                                <asp:Button runat="server" Text="Pending" Width="120px" Height="40px" ID="Button2" CssClass="btn btn-temple" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 40px">
                                <br />
                                <p>Student Record for Fall 2017</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 40px; overflow: auto">
                                <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="TUid" HeaderText="TUid">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="College" HeaderText="College">
                                            <HeaderStyle CssClass="text-center" Width="300px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Department" HeaderText="Major">
                                        <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="300px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Student Status">
                                            <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Type" HeaderText="Application Status">
                                        <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="200px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="More Information">
                                            <ItemTemplate>
                                                <asp:Button ID="btnView" runat="server" Text="Student Information" CssClass="ddl" />
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" Width="200px" BackColor="#9E1B34" ForeColor="White" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
