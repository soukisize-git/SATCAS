<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="satcas.StudentDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Dashboard - SATCAS
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="container-fluid">
        <br /><br />
        <div class="row">
            <div class="col-md-12">
                <div style="padding-left: 20px">
                    <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome, Kenny Le" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br /><br />
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
                <div style="float: right; padding-right: 20px; overflow: auto">
                    <asp:Button ID="btnDashboard" runat="server" Text="Dashboard" Width="120px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button runat="server" Text="Search Approved Courses" Width="200px" Height="40px" ID="btnFindCourse" CssClass="btn btn-temple" />
                    <asp:Button ID="btnAddCourse" runat="server" Text="Add A Course" Width="120px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button ID="btnRoster" runat="server" Text="Roster" Width="120px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" Width="120px" Height="40px" CssClass="btn btn-temple" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab">
                    <h4>Dashboard</h4>
                    <div class="tab-content">
                        <div class="row">
                            <div class="col-md-11 col-md-offset-1">
                                <br />
                                <div class="tab" style="color: black; background-color: white;
                                        padding-left: 25px; padding-right: 25px">
                                    <p>
                                        Welcome to the Study Abroad Course Approval System. Here
                                        you can find preapproved courses, or get a course approved.
                                    </p>
                                    <p>
                                        If you have any question please feel free to contact mim@temple.edu.
                                    </p>
                                </div>
                                <div class="tab" style="color: black; background-color: white">
                                    <h4 style="font-weight: bolder">Course Roster: Fall 2017</h4>
                                    <br />
                                    <div style="color: black; background-color: white; padding-left: 20px; padding-right: 50px; overflow: auto">
                                        <br />
                                        &nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label2" runat="server" Text="Status Filter: "></asp:Label>&nbsp
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                                            <asp:ListItem>Approved</asp:ListItem>
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>Denied</asp:ListItem>
                                        </asp:DropDownList>
                                        <br /><br />
                                        <asp:GridView ID="gvCourseRoster" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="Institution" HeaderText="Institution" >
                                                <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="250px" BackColor="#9E1B34" ForeColor="White" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="CourseNumber" HeaderText="Course Number" >
                                                <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Department" HeaderText="Department" >
                                                <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="200px" BackColor="#9E1B34" ForeColor="White" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Title" HeaderText="Title" >
                                                <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="250px" BackColor="#9E1B34" ForeColor="White" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Status" HeaderText="Status" >
                                                <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                    </div>
                                </div>
                                <div class="tab" style="color: black; background-color: white">
                                    <h4 style="font-weight: bolder">Search for a Course: Fall 2017</h4>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1">
                                            <p>To search an already approved course - <a href="#">Click here</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab" style="color: black; background-color: white">
                                    <h4 style="font-weight: bolder">Add a Course: Fall 2017</h4>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1">
                                            <p>To add a course you wish to be approved - <a href="#">Click here</a></p>
                                        </div>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
