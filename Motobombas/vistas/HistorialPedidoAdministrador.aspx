<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/HistorialPedido.aspx.cs" Inherits="HistorialPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Lb_historial_p" runat="server" CssClass="auto-style1" Text="Historial Pedido"></asp:Label>
    <table class="auto-style2" align="center">
        <tr>
            <td>
                <br />
                <asp:GridView ID="GV_historialpedido" runat="server" align="Center" AutoGenerateColumns="False" DataSourceID="Historial" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GV_historialpedido_SelectedIndexChanged" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="producto" HeaderText="producto" />
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="proveedor" HeaderText="Proveedor" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="fecha_pedido" HeaderText="Fecha_pedido" />
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
                <asp:ObjectDataSource ID="Historial" runat="server" SelectMethod="verHistorialPedido" TypeName="Logica.L_Pedido"></asp:ObjectDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

