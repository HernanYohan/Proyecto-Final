<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/GenerarToken.aspx.cs" Inherits="vistas_GenerarToken" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="L_User_Name" runat="server" ForeColor="White" style="text-align: center" Text="Digite su Usuario"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="TB_User_Name" runat="server" MaxLength="20" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_usuario" runat="server" ControlToValidate="TB_User_Name" ErrorMessage="*" style="color: #FFFFFF" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="B_recuperarC" runat="server" OnClick="Button2_Click" style="text-align: center" Text="Recuperar" ValidationGroup="v1" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="L_Mensaje" runat="server" ForeColor="White" style="text-align: center"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

