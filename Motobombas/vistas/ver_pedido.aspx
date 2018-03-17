<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/ver_pedido.aspx.cs" Inherits="ver_pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style24 {
        width: 100%;
    }
    .nuevoEstilo15 {
        color: #FFFFFF;
    }
    .auto-style25 {
        text-align: center;
    }
    .auto-style26 {
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
    <tr>
        <td class="auto-style25" colspan="2"><span class="nuevoEstilo15">&nbsp;<asp:Label ID="Lb_verpedido" runat="server" Text="Ver Pedido"></asp:Label>
            </span></td>
    </tr>
    <tr>
        <td class="auto-style26" colspan="2">
            <asp:GridView ID="GV_verPedido" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="productos_cliente" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                    <asp:TemplateField HeaderText="Imagen">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="44px" ImageUrl='<%# Eval("url_imagen") %>' />
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
            <asp:ObjectDataSource ID="productos_cliente" runat="server" SelectMethod="obtenerproducto" TypeName="Dao_catalogo"></asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">
            <asp:Button ID="B_comprar" runat="server" Text="Comprar " />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

