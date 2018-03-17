<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/Accesorios.aspx.cs" Inherits="vistas_Accesorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Label ID="LB_Accesorios_visitante" runat="server" Text="Accesorios"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_Accesorios_visitante" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_accesorios" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Imagenes">
                            <ItemTemplate>
                                <asp:ImageButton ID="B_obtener_accesorio" runat="server" Height="41px" ImageUrl='<%# Eval("url_imagen") %>' Width="37px" OnClick="B_obtener_accesorio_Click" />
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
                <asp:ObjectDataSource ID="ODS_accesorios" runat="server" SelectMethod="mostaraAccesorios" TypeName="Logica.L_Catologo"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

