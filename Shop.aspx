<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="E_Commerce_Project_1.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="all-page-margin" CellPadding="4" CellSpacing="5" RepeatColumns="3">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("prod_id") %>' Height="230px" ImageUrl='<%# Eval("prod_image") %>' Width="371px" OnCommand="ImageButton1_Command" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("prod_price") %>'></asp:Label>
            </ItemTemplate>
            <SeparatorStyle BackColor="#CCFFFF" />
        </asp:DataList>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
