<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCategories.aspx.cs" Inherits="E_Commerce_Project_1.ViewCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="all-page-bg">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" Height="256px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1060px" CssClass="all-page-margin">
        <Columns>
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" />
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("cat_image") %>' />
                </ItemTemplate>
                <ControlStyle Height="50px" Width="50px" />
            </asp:TemplateField>
            <asp:BoundField DataField="cat_desc" HeaderText="Description" />
            <asp:TemplateField HeaderText="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="213px">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cat_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Medium">Back to Admin Page</asp:LinkButton>
            </td>
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
</asp:Panel>
</asp:Content>
