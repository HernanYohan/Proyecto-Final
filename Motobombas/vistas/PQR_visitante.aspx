<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/PQR_visitante.aspx.cs" Inherits="vistas_PQR_visitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            text-align: center;
            color: #FFFFFF;
        }
    .auto-style26 {
        color: #000000;
    }
    .auto-style27 {
        text-align: center;
    }
        .nuevoEstilo23 {
            background-color: #003366;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style25" colspan="2">
                <asp:Label ID="Lb_pqr_v" runat="server" Text="PQR VISITANTE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_correo_v" runat="server" CssClass="auto-style23" Text="Correo:" style="color: #FFFFFF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_correo" runat="server" TextMode="Email" CssClass="auto-style26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="White" ValidationGroup="v1" CssClass="auto-style26"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Lb_queja_v" runat="server" CssClass="auto-style23" Text="Queja:" style="color: #FFFFFF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TB_queja" runat="server" Height="83px" Width="145px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_queja" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Button ID="B_pqr_visitante" runat="server" OnClick="B_pqr_visitante_Click" Text="Enviar PQR" ValidationGroup="v1" CssClass="nuevoEstilo23" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

