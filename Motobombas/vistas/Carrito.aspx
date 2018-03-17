<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/Carrito.aspx.cs" Inherits="vistas_Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
        }
        .auto-style27 {
            width: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style26">
        <tr>
            <td rowspan="2" class="auto-style27">
                <asp:GridView ID="GV_venta" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="compra" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GV_venta_RowCommand" DataKeyNames="id_venta" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="subtotal" HeaderText="Valor Total" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="B_eliminar" CommandArgument ='<%# Bind("id_venta") %>' runat="server" CommandName="B_eliminar" style="color: #FFFFFF; background-color: #000099" Text="Eliminar" OnClick="B_eliminar_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:ObjectDataSource ID="compra" runat="server" SelectMethod="verCarrito" TypeName="Dao_carrito" DeleteMethod="eliminarPedido">
                    <DeleteParameters>
                        <asp:Parameter Name="id_venta" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="id_cliente" SessionField="id_usuaro" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="B_comprar" runat="server" Text="Comprar" OnClick="B_comprar_Click" style="color: #FFFFFF; background-color: #000099" />
            </td>
        </tr>
    </table>
</asp:Content>

