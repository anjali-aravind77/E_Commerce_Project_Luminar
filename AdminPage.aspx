<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="E_Commerce_Project_1.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
       
    </style>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner-02.jpg">
        <table class="w-100 all-page-margin">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" BackColor="#663300" ForeColor="White" PostBackUrl="~/Index.aspx">Home</asp:LinkButton>--%>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="204px" ImageUrl="~/images/categories_img_02.jpg" Width="257px" />
                   &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAddCategory" runat="server" Text="Add Category"  BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnAddCategory_Click" BackColor="#006600" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnAddCategory0" runat="server" BackColor="#339933" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnAddCategory0_Click" Text="View All" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image2" runat="server" Height="204px" ImageUrl="~/images/instagram-img-05.jpg" Width="257px" />
                   &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAddProducts" runat="server" Text="Add Products" BackColor="#006600" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnAddProducts_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnAddCategory1" runat="server" BackColor="#339933" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnAddCategory1_Click" Text="View All" />
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                 <td colspan="3">
                    <asp:Image ID="Image3" runat="server" Height="204px" ImageUrl="~/images/categories_img_03.jpg" Width="257px" />
                   &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnManage" runat="server" Text="View User Details" BackColor="#006600" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnManage_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
