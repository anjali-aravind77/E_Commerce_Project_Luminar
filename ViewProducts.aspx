<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="E_Commerce_Project_1.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 38px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="all-page-bg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="prod_id" ForeColor="#333333" GridLines="None" Height="277px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1414px" CssClass="all-page-margin">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" Width="393px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("prod_image") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="50px" Width="50px" />
                    <ItemStyle Width="275px" />
                </asp:TemplateField>
                <asp:BoundField DataField="prod_desc" HeaderText="Description" />
                <asp:BoundField DataField="prod_price" HeaderText="Price" />
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="263px">
                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Not Available</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("prod_status") %>'></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Width="30px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stock">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="240px">
                            <asp:ListItem>In Stock</asp:ListItem>
                            <asp:ListItem>Out of Stock</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Width="50px" />
                    <ItemStyle Width="75px" />
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <table class="w-100">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Medium" PostBackUrl="~/AdminPage.aspx">Back to Admin Page</asp:LinkButton>
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
    </asp:Panel>
</asp:Content>
