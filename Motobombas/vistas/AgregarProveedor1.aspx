<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/AgregarProveedor1.aspx.cs" Inherits="vistas_AgregarProveedor1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .nuevoEstilo13 {
            background-color: #003366;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 663px;
        }
        .auto-style10 {
            color: #FFFFFF;
            font-size: xx-large;
            width: 663px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="height: 210px">
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="Lb_agregar_proveedor" runat="server" Text="Agregar Proveedor "></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; color: #FFFFFF" class="auto-style9">
                <asp:Label ID="Lb_nombre_p" runat="server" Text="Nombre :"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_nombre" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="TB_nombre" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left">
                <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ControlToValidate="TB_nombre" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="text-align: right">
                <asp:Label ID="Lb_telefono_p" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_telefono" runat="server" TextMode="Number" MaxLength="13"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_telefono" runat="server" ControlToValidate="TB_telefono" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left">
                <asp:RegularExpressionValidator ID="REV_telefono" runat="server" ControlToValidate="TB_telefono" ErrorMessage="Solo numeros " ValidationExpression="^[0-9]*" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="text-align: right">
                <asp:Label ID="Lb_correo_p" runat="server" Text="Correo(Gmail)"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_correo" runat="server" TextMode="Email" MaxLength="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style9">
                <asp:Button ID="B_agregar" runat="server" style="color: #FFFFFF; background-color: #003366; font-size: large;" Text="Agregar" OnClick="B_agregar_Click" ValidationGroup="v1" Width="73px" />
            </td>
            <td style="text-align: right">
                <asp:Button ID="B_ver_proveedores" runat="server" CssClass="nuevoEstilo13" OnClick="B_ver_proveedores_Click" style="text-align: right; font-size: large;" Text="Ver Proveedores" />
            </td>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

