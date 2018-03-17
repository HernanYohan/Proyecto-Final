<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/Tanques_Cliente.aspx.cs" Inherits="vistas_Tanques_Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style25 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style25">
    <tr>
        <td class="auto-style24" colspan="2">
            <asp:Label ID="Lb_tanques_c" runat="server" Text="Tanques "></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GV_tanques_c" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_tanques_cliente" GridLines="Horizontal" OnRowCommand="GV_tanques_cliente_RowCommand" OnSelectedIndexChanged="GV_tanques_cliente_SelectedIndexChanged" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                    <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                    <asp:TemplateField HeaderText="Imagenes">
                        <ItemTemplate>
                            <asp:ImageButton ID="B_obtener_imagen" CommandArgument ='<%# Bind("id_producto") %>' runat="server" Height="41px" ImageUrl='<%# Eval("url_imagen") %>' Width="44px" CommandName="B_obtener_imagen" />
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
            <asp:ObjectDataSource ID="ODS_tanques_cliente" runat="server" SelectMethod="mostaraTanques" TypeName="Logica.L_Catologo"></asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

