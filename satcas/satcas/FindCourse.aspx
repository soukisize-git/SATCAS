<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FindCourse.aspx.cs" Inherits="satcas.FindCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Find Course - SATCAS
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
                    <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome, Kenny Le" Font-Bold="True" Font-Size="Large"></asp:Label>
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
                    <h4>Search Pre-approved International Courses</h4>
                    <div class="tab-content" style="padding-left: 10px; padding-right: 10px">
                        <br /><br />
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1" style="padding-top: 10px">
                                <asp:Label ID="Label3" runat="server" Text="Find Institution: " Font-Bold="True"></asp:Label>&nbsp
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl">
                                    <asp:ListItem>All</asp:ListItem>
                                    <asp:ListItem>University of Paris</asp:ListItem>
                                    <asp:ListItem>Arcadia University</asp:ListItem>
                                    <asp:ListItem>Yonsei University</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4" style="padding-top: 10px">
                                <asp:Label ID="Label2" runat="server" Text="Find Department: " Font-Bold="True"></asp:Label>&nbsp
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                                    <asp:ListItem>All</asp:ListItem>
                                    <asp:ListItem>Computer Information Science</asp:ListItem>
                                    <asp:ListItem>Chemistry</asp:ListItem>
                                    <asp:ListItem>Kinesiology</asp:ListItem>
                                    <asp:ListItem>English</asp:ListItem>
                                    <asp:ListItem>Psychology</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2" style="padding-top: 10px">
                                <asp:Label ID="Label4" runat="server" Text="Credits: " Font-Bold="True"></asp:Label>&nbsp
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="ddl">
                                    <asp:ListItem>All</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br /><br />
                    </div>
                </div>
            </div>
        </div>
        <div class="tab">
            <h4>Approved Courses</h4>
            <div class="tab-content">
                <br />
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12" style="padding-left: 20px; padding-right: 5px; overflow: auto">
                            <asp:GridView ID="gvCourseList" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="60px" BackColor="#9E1B34" ForeColor="White" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Institution" DataField="Institution">
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="400px" BackColor="#9E1B34" ForeColor="White" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="College" HeaderText="College">
                                    <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="300px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Department" DataField="Department">
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="100px" BackColor="#9E1B34" ForeColor="White" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Course #" DataField="CourseNumber">
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Title" DataField="Title">
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="450px" BackColor="#9E1B34" ForeColor="White" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:Button ID="btnView" runat="server" Text="Description" CssClass="ddl" />
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center" HorizontalAlign="Center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
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
        <br />
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12" style="padding-left: 20px; padding-right: 20px">
                    <button type="submit" class="btn btn-primary" onclick="successalert()">Add to Roster</button>
                </div>
            </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>
