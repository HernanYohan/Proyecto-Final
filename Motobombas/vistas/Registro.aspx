<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/Registro.aspx.cs" Inherits="vistas_Registro" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style24 {
            height: 26px;
        }
        .auto-style26 {
            height: 26px;
            width: 298px;
            text-align: right;
        }
        .auto-style27 {
            width: 298px;
            text-align: right;
        }
        .auto-style28 {
            width: 298px;
            text-align: right;
            height: 30px;
        }
        .auto-style29 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Label ID="Lb_registrar" runat="server" Text="Registrate ahora"></asp:Label>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_nombre" runat="server" style="color: #FFFFFF" Text="Nombre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_nombre" runat="server" MaxLength="20" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vn" runat="server" ControlToValidate="TB_nombre" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ControlToValidate="TB_nombre" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_apellido" runat="server" style="color: #FFFFFF" Text="Apellido:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_apellido" runat="server" MaxLength="20" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="va" runat="server" ControlToValidate="TB_apellido" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="REV_apellido" runat="server" ControlToValidate="TB_apellido" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="Lb_direccion" runat="server" style="color: #FFFFFF" Text="Direccion:"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="TB_direccion" runat="server" MaxLength="20" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vd" runat="server" ControlToValidate="TB_direccion" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Lb_telefono" runat="server" style="color: #FFFFFF" Text="Telefono:"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TB_tl" runat="server" MaxLength="11" OnTextChanged="TB_tl_TextChanged" Rows="11" TextMode="Number" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vt" runat="server" ControlToValidate="TB_tl" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_correo" runat="server" ForeColor="White" Text="Correo (Gmail)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_correo" runat="server" MaxLength="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="REV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="No es un correo &quot;@&quot;,&quot;.&quot;" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_usuario" runat="server" style="color: #FFFFFF" Text="Usuario:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_usuario" runat="server" MaxLength="10" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vu" runat="server" ControlToValidate="TB_usuario" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_clave" runat="server" style="color: #FFFFFF" Text="Clave:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_clave" runat="server" MaxLength="10" TextMode="Password" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vc" runat="server" ControlToValidate="TB_clave" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CompareValidator ID="CV_clave" runat="server" ControlToCompare="TB_clave" ControlToValidate="TB_confirmarClave" ErrorMessage="No coninciden las claves, vuelve a intentar" ForeColor="White" SetFocusOnError="True" ValidationGroup="v1"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_confirmarClave" runat="server" ForeColor="White" Text="Confirmar Clave:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_confirmarClave" runat="server" TextMode="Password" ValidationGroup="v1" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_confirmarClave" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="B_registro" runat="server" OnClick="B_registro_Click" style="color: #FFFFFF; font-size: large; background-color: #000066" Text="Registrar" ValidationGroup="v1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

