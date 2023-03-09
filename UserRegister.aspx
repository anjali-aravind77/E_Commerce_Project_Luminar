<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="E_Commerce_Project_1.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner-03.jpg" Height="666px">
    <table style="margin-left:120px;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Enter your name</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtName" runat="server" Width="205px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">Enter your Phone Number</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtPhonenum" runat="server" Width="209px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhonenum" ErrorMessage="required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Enter a valid Email </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtEmail" runat="server" Width="212px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Username</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtUsername" runat="server" Width="217px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUsername" ErrorMessage="required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Password</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="211px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="194px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="password mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
