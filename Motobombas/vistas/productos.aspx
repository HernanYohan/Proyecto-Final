<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/productos.aspx.cs" Inherits="Vista_productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style23">
                <asp:Label ID="Lb_catalogo_p" runat="server" Text="Catalogo de Productos"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_catalogo" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ObjectDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referenica" />
                        <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Imagen">
                            <ItemTemplate>
                                <asp:ImageButton ID="B_descripcion" runat="server" Height="37px" ImageUrl='<%# Eval("url_imagen") %>' Width="37px" OnClick="B_descripcion_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="mostrarproductos" TypeName="Logica.L_productos"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

