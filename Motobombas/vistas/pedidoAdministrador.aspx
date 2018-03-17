<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/pedidoAdministrador.aspx.cs" Inherits="vistas_pedidoAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 23px;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style10 {
            height: 26px;
            text-align: left;
        }
        .auto-style11 {
            height: 26px;
            width: 629px;
            text-align: right;
        }
        .auto-style12 {
            height: 23px;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: right;
            width: 629px;
        }
        .auto-style15 {
            height: 26px;
            text-align: left;
            width: 184px;
        }
        .auto-style16 {
            height: 23px;
            color: #FFFFFF;
            width: 449px;
            text-align: right;
        }
        .auto-style17 {
            height: 23px;
            color: #FFFFFF;
            text-align: right;
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="margin-left: 0px; margin-top: 55px; background-color: #000066">
        <tr>
            <td colspan="4">
                <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-size: x-large" Text="Realizar pedido"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:DropDownList ID="DDL_producto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_producto_SelectedIndexChanged">
                    <asp:ListItem Value="0">Producto</asp:ListItem>
                    <asp:ListItem Value="1">Bombas</asp:ListItem>
                    <asp:ListItem Value="2">Tanques</asp:ListItem>
                    <asp:ListItem Value="3">Accesorios</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDL_producto" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DDL_referencia" runat="server" DataSourceID="referencia" DataTextField="referencia" DataValueField="referencia">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="referencia" runat="server" SelectMethod="referencia" TypeName="Dao_proveedor" OnSelecting="referencia_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="categoria" SessionField="id_categoria" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style10">
                <asp:Button ID="B_buscar" runat="server" OnClick="B_buscar_Click" style="color: #FFFFFF; font-size: medium; margin-left: 0px; background-color: #000099" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Lb_cantidad" runat="server" Text="Cantidad:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TB_cantidad" runat="server" MaxLength="6" TextMode="Number" Visible="False" Width="70px" OnTextChanged="TB_cantidad_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_cantidad" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                <asp:GridView ID="GV_selec" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="select" ForeColor="#333333" GridLines="None" OnRowCommand="GV_selec_RowCommand" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="proveedor" HeaderText="Proveedor" />
                        <asp:BoundField DataField="marca" HeaderText="Marca" />
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="valor" HeaderText="Valor" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="B_pedido" runat="server" CommandArgument ='<%# Bind("id_proveedor") %>  ' CommandName="B_pedido" OnClick="B_pedido_Click" style="color: #FFFFFF; text-align: left; font-size: medium; background-color: #000099" Text="Realizar pedido" ValidationGroup="v1" />
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
            </td>
            <td class="auto-style9">
                <asp:ObjectDataSource ID="select" runat="server" SelectMethod="seleccionar" TypeName="Logica.L_pedido_admin">
                    <SelectParameters>
                        <asp:SessionParameter Name="ver" SessionField="referencia" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="2">
            </td>
            <td style="text-align: right" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

