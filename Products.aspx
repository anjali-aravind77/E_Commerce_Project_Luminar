<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Commerce_Project_1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .margin-class{
            margin-left:30px;
        }
   
      
    </style>
    <link rel="stylesheet" href="css/custom_an.css" type="text/css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC">
      
        <br />
        <asp:DataList ID="DataList1" runat="server" Height="352px" RepeatColumns="5" RepeatDirection="Horizontal" Width="989px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("category_id") %>' CssClass="margin-class" Height="213px" ImageUrl='<%# Eval("cat_image") %>' Width="221px" OnClick="ImageButton1_Click" OnCommand="ImageButton1_Command" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" CssClass="element-margin" Text='<%# Eval("cat_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" CssClass="element-margin" Text='<%# Eval("cat_desc") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle />
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
        <br />
    </asp:Panel>
</asp:Content>
