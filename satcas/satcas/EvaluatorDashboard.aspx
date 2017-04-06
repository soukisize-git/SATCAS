<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EvaluatorDashboard.aspx.cs" Inherits="satcas.EvaluatorDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Evaluator Dashboard
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
                    <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome, Travis Scott" Font-Bold="True" Font-Size="Large"></asp:Label>
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
                    <asp:Button runat="server" Text="Review Application" Width="150px" Height="40px" ID="btnFindCourse" CssClass="btn btn-temple" />
                    <asp:Button ID="btnAddCourse" runat="server" Text="Logout" Width="120px" Height="40px" CssClass="btn btn-temple" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab">
                    <h4>Fall 2017 Application Review</h4>
                    <div class="tab-content" style="padding-left: 20px; overflow: auto">
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
                            </Columns>
                        </asp:GridView>
                        <br />
                    </div>
                </div>
                <div class="tab">
                    <h4>Needing Approval for Kenny Le</h4>
                    <div class="tab-content" style="padding-left: 20px; overflow: auto">
                        <br />
                        <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Institution" HeaderText="Institution">
                                    <HeaderStyle CssClass="text-center" Width="250px" BackColor="#9E1B34" ForeColor="White" />
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
                                <asp:TemplateField HeaderText="Syllabus">
                                    <ItemTemplate>
                                        <asp:Button ID="btnView" runat="server" Text="View" CssClass="ddl" />
                                    </ItemTemplate>
                                    <HeaderStyle CssClass="text-center" Width="150px" BackColor="#9E1B34" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Status" HeaderText="Current Status">
                                    <HeaderStyle CssClass="text-center" HorizontalAlign="Center" BackColor="#9E1B34" ForeColor="White" />
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
                                        <asp:Button ID="Button1" runat="server" CssClass="ddl" Text="View" />
                                    </ItemTemplate>
                                    <HeaderStyle BackColor="#9E1B34" CssClass="text-center" ForeColor="White" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-success">Submit</button>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="padding-left: 40px">
                <button type="submit" class="btn btn-info">Remove Selected Course</button>
                <button type="submit" class="btn btn-primary">Send to Advisor</button>
            </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>
