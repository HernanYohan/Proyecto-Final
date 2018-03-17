<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/RecuperarContraseña.aspx.cs" Inherits="vistas_RecuperarContraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nuevoEstilo23 {
            background-color: #003366;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td>
                <asp:Label ID="L_Contraseña" runat="server" ForeColor="White" Text="Digite Su Nueva Contraseña"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="Tb_Contraseña" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tb_Contraseña" ErrorMessage="*" ForeColor="White" ValidationGroup="V1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_Repetir" runat="server" ForeColor="White" Text="Repita Su Nueva Contraseña"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="Tb_Repetir" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tb_Repetir" ErrorMessage="*" ForeColor="White" ValidationGroup="V1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="B_Cambiar" runat="server" OnClick="B_Cambiar_Click" Text="Cambiar" CssClass="nuevoEstilo23" ValidationGroup="V1" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

