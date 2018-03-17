<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/Catalogo_Cliente.aspx.cs" Inherits="vistas_Catalogo_Cliente" %>

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
                <asp:Label ID="Lb_catalogo_c" runat="server" Text="Catalogo Cliente"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_Catalogo_Cliente" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" RowCommand ="GV_Catalogo_Cliente_RowCommand" DataSourceID="ODS_catalogo_cliente" GridLines="Horizontal" DataKeyNames="id_producto" OnRowCommand="GV_Catalogo_Cliente_RowCommand1" OnSelectedIndexChanged="GV_Catalogo_Cliente_SelectedIndexChanged" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Imagenes">
                            <ItemTemplate>
                                <asp:ImageButton ID="IB_producto" CommandArgument ='<%# Bind("id_producto") %>' runat="server" Height="41px" ImageUrl='<%# Eval("url_imagen") %>' Width="41px"  CommandName="IB_producto" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:ImageButton ID="B_obtener_productos" runat="server" Height="44px" ImageUrl='<%# Eval("url_imagen") %>' Width="41px" />
                    </EmptyDataTemplate>
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
                <asp:ObjectDataSource ID="ODS_catalogo_cliente" runat="server" SelectMethod="mostrarproductos" TypeName="Logica.L_productos"></asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

