<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/Accesorios_Cliente.aspx.cs" Inherits="vistas_Accesorios_Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style25">
        <tr>
            <td class="auto-style26" colspan="2">
                <asp:Label ID="LB_Accesorios_c" runat="server" Text="Accesorios"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_accesorios_c" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ODS_accesorios_cliente" GridLines="Horizontal" OnRowCommand="GV_accesorios_cliente_RowCommand" OnSelectedIndexChanged="GV_accesorios_cliente_SelectedIndexChanged" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Imagenes">
                            <ItemTemplate>
                                <asp:ImageButton ID="B_obtener_accesorios" runat="server" CommandArgument ='<%# Bind("id_producto") %>' Height="43px" ImageUrl='<%# Eval("url_imagen") %>' Width="41px" CommandName="B_obtener_accesorios" />
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
                <asp:ObjectDataSource ID="ODS_accesorios_cliente" runat="server" SelectMethod="mostaraAccesorios" TypeName="Logica.L_Catologo"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

