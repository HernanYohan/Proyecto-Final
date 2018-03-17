<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/seleccionCarrito.aspx.cs" Inherits="vistas_seleccionCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 166px;
        }
        .auto-style32 {
            width: 233px;
            height: 23px;
        }
        .auto-style35 {
            text-align: left;
        }
        .auto-style39 {
            width: 233px;
        }
        .auto-style40 {
            width: 233px;
            height: 38px;
        }
        .nuevoEstilo33 {
            background-color: #000080;
        }
        .nuevoEstilo34 {
            background-color: #000080;
        }
        .nuevoEstilo35 {
            background-color: #000080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style26">
        <tr>
            <td rowspan="3">
                <asp:Label ID="Label1" runat="server" CssClass="nuevoEstilo4" Text="Cantidad"></asp:Label>
                <asp:TextBox ID="TB_cantidad" runat="server" TextMode="Number" Width="48px" OnTextChanged="TB_cantidad_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_cantidad" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_cantidad" runat="server" ControlToValidate="TB_cantidad" ErrorMessage="maximo 4 digitos " ForeColor="White" ValidationExpression="\d{1,4}" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style35" rowspan="2">
                ;<asp:GridView ID="GV_Verproducto" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="ver" GridLines="None" DataKeyNames="id_producto" OnSelectedIndexChanged="GV_Verproducto_SelectedIndexChanged" OnRowCommand="GV_Verproducto_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="marca" HeaderText="Marca" />
                        <asp:BoundField DataField="valor" HeaderText="Valor" />
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad Disponible " />
                        <asp:TemplateField HeaderText="Imagen">
                           
                            <ItemTemplate>
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("url_imagen") %>' style="width: 100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="B_agregarp" runat="server" CommandName="B_agregarp" Text="Agregar a carrito" CommandArgument ='<%# Bind("cantidad") %>  ' style="color: #FFFFFF; font-size: medium; background-color: #000099" ValidationGroup="v1" OnClick="B_agregarp_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
            <td class="auto-style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Button ID="B_continuar" runat="server" CssClass="nuevoEstilo34" style="color: #FFFFFF; font-size: medium" Text="Agregar mas" OnClick="B_continuar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:ObjectDataSource ID="ver" runat="server" SelectMethod="verProducto" TypeName="Dao_carrito">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="id_producto" SessionField="id_producto" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style32">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

