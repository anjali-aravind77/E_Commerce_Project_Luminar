<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="E_Commerce_Project_1.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 410px;
        }
        .auto-style6 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="w-100 all-page-margin">
            <tr>
                <td rowspan="12" class="auto-style6">
                    <asp:Image ID="Image1" runat="server" Height="289px" Width="216px" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Price :
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Please choose the required quantity.</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnMinus" runat="server" OnClick="btnMinus_Click" Text="-" />
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCounter" runat="server" Height="22px" Width="53px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnPlus" runat="server" OnClick="btnPlus_Click" Text="+" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnAddtoCart" runat="server" OnClick="btnAddtoCart_Click" Text="Add to Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnViewCart" runat="server" OnClick="btnViewCart_Click" Text="View Cart" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBack" runat="server" Text="Back to Home" OnClick="btnBack_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
        </table>
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
