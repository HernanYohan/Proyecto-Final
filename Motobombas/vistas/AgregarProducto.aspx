<%@ Page Title="" Language="C#" ValidateRequest ="true" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/AgregarProducto.aspx.cs" Inherits="AgregarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .nuevoEstilo13 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .nuevoEstilo14 {
            color: #FFFFFF;
        }
        .nuevoEstilo15 {
            color: #FFFFFF;
        }
        .nuevoEstilo16 {
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 354px;
            height: 102px;
            margin-bottom: 0px;
            margin-top: 111px;
        }
        .auto-style12 {
            height: 20px;
            text-align: center;
        }
        .auto-style14 {
            width: 465px;
            height: 20px;
            text-align: justify;
        }
        .auto-style15 {
            width: 465px;
            text-align: justify;
            height: 26px;
        }
        .auto-style16 {
            text-align: center;
            height: 32px;
        }
        .auto-style17 {
            text-align: center;
            height: 32px;
        }
        .auto-style18 {
            text-align: center;
            height: 26px;
        }
        .auto-style19 {
            text-align: center;
            height: 26px;
        }
        .auto-style20 {
            text-align: center;
            width: 971px;
        }
        .auto-style21 {
            text-align: justify;
            height: 32px;
        }
        .auto-style22 {
            text-align: justify;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Lb_agregar_productos" runat="server" CssClass="nuevoEstilo13" Text="Agregar Producto"></asp:Label>
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <br />
                <table class="auto-style6" align="center">
                    <tr>
                        <td class="auto-style18" colspan="2">
                <asp:DropDownList ID="DDL_categoria" runat="server" >
                    <asp:ListItem Value="0">Categoria</asp:ListItem>
                    <asp:ListItem Value="1">bomba</asp:ListItem>
                    <asp:ListItem Value="2">tanque</asp:ListItem>
                    <asp:ListItem Value="3">accesorio</asp:ListItem>
                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFV_categoria" runat="server" ControlToValidate="DDL_categoria" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18" colspan="2">
                <asp:FileUpload ID="FU_imagen" runat="server" style="color: #666699; background-color: #000066" />
                            <asp:RequiredFieldValidator ID="RFV_imagen" runat="server" ControlToValidate="FU_imagen" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                <asp:Label ID="Lb_marca" runat="server" Text="Marca " CssClass="nuevoEstilo14" style="font-size: large"></asp:Label>
                        </td>
                        <td class="auto-style19">
                <asp:TextBox ID="TB_marcaprod" runat="server" Width="226px" MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_marca" runat="server" ControlToValidate="TB_marcaprod" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19">
                            <asp:RegularExpressionValidator ID="REV_marca" runat="server" ControlToValidate="TB_marcaprod" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Label ID="Lb_referencia" runat="server" Text="Referencia" CssClass="nuevoEstilo15" style="font-size: large"></asp:Label>
                        </td>
                        <td class="auto-style12">
                <asp:TextBox ID="TB_potenciaprod" runat="server" Width="228px" MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_referencia" runat="server" ControlToValidate="TB_potenciaprod" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style12">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                <asp:Label ID="Lb_valor" runat="server" Text="Valor" CssClass="nuevoEstilo16" style="font-size: large"></asp:Label>
                        </td>
                        <td class="auto-style18">
                <asp:TextBox ID="TB_valorprod" runat="server" Width="228px" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_valor" runat="server" ControlToValidate="TB_valorprod" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                <asp:Label ID="Lb_cantidad" runat="server" Text="Cantidad" style="font-size: large; color: #FFFFFF; background-color: #003366"></asp:Label>
                        </td>
                        <td class="auto-style17">
                <asp:TextBox ID="TB_cantidadprod" runat="server" Width="230px" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_cantidad" runat="server" ControlToValidate="TB_cantidadprod" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Lb_proveedor" runat="server" ForeColor="#FFFFCC" style="font-size: large" Text="Proveedor "></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:DropDownList ID="DDL_proveedor" runat="server" DataSourceID="proveedor" DataTextField="nombre" DataValueField="id_proveedor" Height="59px" Width="135px">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="proveedor" runat="server" SelectMethod="obtenerproveedor" TypeName="Dao_proveedor"></asp:ObjectDataSource>
                            <asp:RequiredFieldValidator ID="RFV_proveedor" runat="server" ControlToValidate="DDL_proveedor" ErrorMessage="*" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_agregarproducto" runat="server" Text="Agregar" style="color: #FFFFFF; font-size: x-large; background-color: #003366" OnClick="B_agregarproducto_Click" ValidationGroup="v1" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="B_ver" runat="server" OnClick="B_ver_Click" style="color: #FFFFFF; font-size: x-large; background-color: #003366" Text="Ver productos" />
            </td>
        </tr>
    </table>
</asp:Content>

