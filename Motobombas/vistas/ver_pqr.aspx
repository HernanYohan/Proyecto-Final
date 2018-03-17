<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/ver_pqr.aspx.cs" Inherits="vistas_ver_pqr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Lb_verPqr" runat="server" ForeColor="White" style="font-size: xx-large" Text="Ver PQR"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="Gv_verPqr" runat="server" align="Center"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_pqr" GridLines="Horizontal" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="correo" HeaderText="Correo" />
                        <asp:BoundField DataField="queja" HeaderText="Queja" />
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
                <asp:ObjectDataSource ID="ODS_pqr" runat="server"  SelectMethod="mostrarpqr" TypeName="Logica.L_PQR"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

