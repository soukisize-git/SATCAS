<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdvisorDashboard.aspx.cs" Inherits="satcas.AdvisorDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Academic Advisor Dashboard- SATCAS
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="container-fluid">
        <br /><br />
        <div class="row">
            <div class="col-md-12">
                <div style="padding-left: 20px">
                    <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome, Barrack Obama" Font-Bold="True" Font-Size="Large"></asp:Label>
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
                <div style="float: right; padding-right: 20px">
                    <asp:Button ID="btnDashboard" runat="server" Text="Dashboard" Width="120px" Height="40px" CssClass="btn btn-temple" />
                    <asp:Button runat="server" Text="Review Application" Width="150px" Height="40px" ID="btnFindCourse" CssClass="btn btn-temple" />
                    <asp:Button ID="btnAddCourse" runat="server" Text="Logout" Width="120px" Height="40px" CssClass="btn btn-temple" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab">
                    <h4>Student awaiting for approval for Fall 2017</h4>
                    <div class="tab-content" style="padding-left: 40px; overflow: auto">
                        <br />
                        <asp:GridView ID="gvStudentList" runat="server" AutoGenerateColumns="False">
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
                                <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Status" HeaderText="Status">
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="View">
                                    <ItemTemplate>
                                        <asp:Button ID="btnView" runat="server" Text="Description" CssClass="ddl" />
                                    </ItemTemplate>
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Comments">
                                    <ItemTemplate>
                                        <asp:Button ID="Button2" runat="server" CssClass="ddl" Text="View" />
                                    </ItemTemplate>
                                    <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                    </div>
                </div>
                <div class="tab">
                    <h4>Student Application</h4>
                    <div class="tab-content" style="padding-left: 40px; overflow: auto">
                        <br /><br />
                        <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Institution" HeaderText="Institution">
                                    <HeaderStyle CssClass="text-center" Width="350px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Department" HeaderText="Department">
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseNumber" HeaderText="Course Number">
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseEquivalent" HeaderText="Course Equivalent">
                                <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="StatusApproved" HeaderText="Current Status">
                                    <HeaderStyle CssClass="text-center" HorizontalAlign="Center" BackColor="#9E1B34" ForeColor="White" Width="200px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Change Status">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlChangeStatus" runat="server" CssClass="ddl">
                                            <asp:ListItem>Approved</asp:ListItem>
                                            <asp:ListItem>Denied</asp:ListItem>
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Comments">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="View" CssClass="ddl" />
                                    </ItemTemplate>
                                    <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 20px">
                                <br />
                                <button type ="submit" class ="btn btn-primary">Submit to Admin</button>
                                <br /><br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
