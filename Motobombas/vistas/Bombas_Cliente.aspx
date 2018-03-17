<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/Bombas_Cliente.aspx.cs" Inherits="vistas_Bombas_Cliente" %>

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
            <asp:Label ID="Lb_bombas_c" runat="server" Text="Bombas"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GV_bombas_cliente" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_bombas_cliente" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GV_bombas_cliente_RowCommand" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                    <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                    <asp:TemplateField HeaderText="Imagenes">
                        <ItemTemplate>
                            <asp:ImageButton ID="B_obtener_bombas" CommandArgument ='<%# Bind("id_producto") %>' runat="server" Height="39px" ImageUrl='<%# Eval("url_imagen") %>' Width="30px" CommandName="B_obtener_bombas" />
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
            <asp:ObjectDataSource ID="ODS_bombas_cliente" runat="server" SelectMethod="MostrarBombas" TypeName="Logica.L_Catologo"></asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

