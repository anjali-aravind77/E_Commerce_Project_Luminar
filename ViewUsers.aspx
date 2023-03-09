<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="E_Commerce_Project_1.ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#66FFCC">
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#660066" Height="165px" Width="1190px">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="phonenum" HeaderText="Phone Number" />
            <asp:BoundField DataField="email" HeaderText="Email Address" />
            <asp:BoundField DataField="username" HeaderText="username" />
            <asp:BoundField DataField="status" HeaderText="User Status" />
            <asp:TemplateField HeaderText="Block Users">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("reg_id") %>' OnCommand="LinkButton1_Command">Block User</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AdminPage.aspx">Back to Admin Page</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>
