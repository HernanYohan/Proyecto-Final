<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/HistorialCliente.aspx.cs" Inherits="vistas_HistorialCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style26 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style26">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Lb_historial_c" runat="server" style="color: #FFFFFF; text-align: center" Text="Historial Cliente"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GV_historial" runat="server" align="center" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_HISTORIAL" GridLines="Horizontal" EmptyDataText="No hay datos " OnSelectedIndexChanged="GV_historial_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="subtotal" HeaderText="Valor total" />
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
            <asp:ObjectDataSource ID="ODS_HISTORIAL" runat="server" SelectMethod="verHistorial" TypeName="Dao_carrito">
                <SelectParameters>
                    <asp:SessionParameter Name="id_cliente" SessionField="id_usuaro" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
</table>
</asp:Content>

