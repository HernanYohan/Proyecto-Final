<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/AgregarCliente.aspx.cs" Inherits="AgregarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
    .nuevoEstilo12 {
        color: #FFFFFF;
        font-size: xx-large;
    }
    .nuevoEstilo13 {
        color: #FFFFFF;
    }
    .nuevoEstilo14 {
        color: #FFFFFF;
            font-size: large;
        }
    .nuevoEstilo15 {
        color: #FFFFFF;
            font-size: large;
        }
    .nuevoEstilo16 {
        color: #FFFFFF;
            font-size: large;
        }
    .nuevoEstilo17 {
        color: #FFFFFF;
            font-size: large;
        }
    .nuevoEstilo18 {
        color: #FFFFFF;
            font-size: large;
        }
    .nuevoEstilo19 {
        color: #FFFFFF;
        background-image: url('../imagenes/35eb7d5bce221d9392feb1e426ba48af--wallpaper-azul-color-azul.jpg');
            font-size: x-large;
        }
        .auto-style6 {
            width: 100%;
            height: 241px;
        }
        .auto-style7 {
            width: 210px;
        }
        .auto-style10 {
            width: 285px;
        }
        .auto-style12 {
            width: 210px;
            height: 31px;
        }
        .auto-style13 {
            width: 446px;
            height: 31px;
        }
        .nuevoEstilo20 {
            background-image: url('../imagenes/21397411_10210900642537692_1201996969_n.jpg');
        }
        .nuevoEstilo21 {
            background-image: url('../imagenes/21397411_10210900642537692_1201996969_n.jpg');
        }
        .nuevoEstilo22 {
            background-image: url('../imagenes/21397411_10210900642537692_1201996969_n.jpg');
        }
        .nuevoEstilo23 {
            color: #000080;
        }
        .nuevoEstilo24 {
            color: #FFFFFF;
        }
        .nuevoEstilo25 {
            background-color: #000080;
        }
        .nuevoEstilo26 {
            color: #FFFFFF;
        }
        .nuevoEstilo27 {
            background-color: #000080;
            color: #FFFFFF;
        }
        .nuevoEstilo28 {
            background-color: #000066;
            color: #FFFFFF;
        }
        .nuevoEstilo29 {
            background-color: #000066;
            color: #FFFFFF;
        }
        .nuevoEstilo30 {
            background-color: #000066;
        }
        .nuevoEstilo31 {
            background-color: #000066;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style19 {
            width: 210px;
            text-align: center;
            height: 32px;
        }
        .auto-style20 {
            width: 446px;
            height: 32px;
        }
        .auto-style21 {
            width: 210px;
            text-align: center;
            height: 20px;
        }
        .auto-style22 {
            width: 446px;
            height: 20px;
        }
        .auto-style23 {
            width: 210px;
            text-align: center;
            height: 35px;
        }
        .auto-style24 {
            width: 446px;
            height: 35px;
        }
        .auto-style25 {
            width: 210px;
            text-align: center;
            height: 33px;
        }
        .auto-style26 {
            width: 446px;
            height: 33px;
        }
        .nuevoEstilo32 {
            background-color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Lb_agregar_usuarios" runat="server" CssClass="nuevoEstilo12" Text="Agrega Usuario"></asp:Label>
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <span class="nuevoEstilo13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <span class="nuevoEstilo13">
                <br />
                <br />
                <table class="auto-style6" align="center">
                    <tr>
                        <td class="auto-style10" rowspan="8">
                            &nbsp;</td>
                        <td class="auto-style19">
                <asp:Label ID="Lb_nombre_u" runat="server" Text="Nombre" CssClass="nuevoEstilo14"></asp:Label>
                        </td>
                        <td class="auto-style20">
                <asp:TextBox ID="TB_nombrecliente" runat="server" OnTextChanged="TB_nombrecliente_TextChanged" MaxLength="20"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="TB_nombrecliente" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ControlToValidate="TB_nombrecliente" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                <asp:Label ID="Lb_apellido_u" runat="server" Text="Apellido" CssClass="nuevoEstilo15"></asp:Label>
                        </td>
                        <td class="auto-style22">
                <asp:TextBox ID="TB_apellidocliente" runat="server" MaxLength="20"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_apellido" runat="server" ControlToValidate="TB_apellidocliente" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="REV_apellido" runat="server" ControlToValidate="TB_apellidocliente" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                <asp:Label ID="Lb_telefono_u" runat="server" Text="Teléfono" CssClass="nuevoEstilo16"></asp:Label>
                        </td>
                        <td class="auto-style24">
                <asp:TextBox ID="TB_telefonocliente" runat="server" MaxLength="13" OnTextChanged="TB_telefonocliente_TextChanged" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_telefono" runat="server" ControlToValidate="TB_telefonocliente" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25">
                <asp:Label ID="Lb_direccion_u" runat="server" Text="Dirección" CssClass="nuevoEstilo17"></asp:Label>
                        </td>
                        <td class="auto-style26">
                <asp:TextBox ID="TB_direccioncliente" runat="server" MaxLength="20"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_direccion" runat="server" ControlToValidate="TB_direccioncliente" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                <asp:Label ID="Lb_correo_u" runat="server" Text="Correo (Gmail)" CssClass="nuevoEstilo18"></asp:Label>
                        </td>
                        <td class="auto-style13">
                <span class="nuevoEstilo13">
                <asp:TextBox ID="TB_correocliente" runat="server" TextMode="Email" MaxLength="25"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="TB_correocliente" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                </span>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                <span class="nuevoEstilo13">
                            <asp:Label ID="Lb_usuario_u" runat="server" Text="Usuario"></asp:Label>
                </span>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TB_usuario" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_usuario" runat="server" ControlToValidate="TB_usuario" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                <span class="nuevoEstilo13">
                            <asp:Label ID="Lb_clave_u" runat="server" Text="Clave"></asp:Label>
                </span>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TB_clave" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_clave" runat="server" ControlToValidate="TB_clave" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CV_clave" runat="server" ControlToCompare="TB_clave" ControlToValidate="TB_confirmarClave" ErrorMessage="No coinciden las dos claves, vuelve a intentar" ValidationGroup="v1" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Lb_confirmar_clave" runat="server" Text="Confirmar Clave"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TB_confirmarClave" runat="server" TextMode="Password" ValidationGroup="v1" MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_confirmar_clavle" runat="server" ControlToValidate="TB_confirmarClave" ErrorMessage="*" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <span class="nuevoEstilo13">
                <br />
                </span>
                <asp:DropDownList ID="DDL_rol" runat="server" CssClass="nuevoEstilo32" style="color: #FFFFFF" OnSelectedIndexChanged="DDL_rol_SelectedIndexChanged">
                    <asp:ListItem Value="0">Rol</asp:ListItem>
                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                    <asp:ListItem Value="2">Cliente</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFV_rol" runat="server" ControlToValidate="DDL_rol" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="B_agregarcliente" runat="server" Text="Agregar" CssClass="nuevoEstilo31" OnClick="B_agregarcliente_Click" ValidationGroup="v1" Width="160px" />
                </td>
            <td>
                <asp:Button ID="B_ver_cliente" runat="server" CssClass="nuevoEstilo30" Height="27px" OnClick="B_ver_cliente_Click" style="text-align: right; font-size: large; color: #FFFFFF" Text="Ver Clientes " Width="133px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

