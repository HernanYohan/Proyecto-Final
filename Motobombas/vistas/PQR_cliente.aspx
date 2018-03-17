<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/PQR_CLIENTE.aspx.cs" Inherits="vistas_PQR_CLIENTE" %>

<script runat="server">

    protected void TB_queja_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style28 {
        text-align: center;
    }
    .auto-style29 {
        height: 26px;
    }
    .auto-style30 {
        color: #FFFFFF;
        height: 26px;
            width: 279px;
            text-align: center;
        }
        .auto-style31 {
            width: 279px;
        }
        .auto-style32 {
            width: 279px;
            text-align: center;
        }
        .nuevoEstilo33 {
            background-color: #000066;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style27" style="height: 132px; width: 547px; margin-right: 239px">
    <tr>
        <td class="auto-style28" colspan="2">
            <asp:Label ID="Lb_pqr_c" runat="server" ForeColor="White" Text="PQR CLIENE"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style29">
            <asp:Label ID="Lb_correo_c" runat="server" CssClass="nuevoEstilo4" Text="Correo:"></asp:Label>
        </td>
        <td class="auto-style30">
            <asp:TextBox ID="TB_correo" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Lb_queja" runat="server" CssClass="nuevoEstilo4" Text="Queja:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="TB_queja" runat="server" Height="67px" Width="120px" OnTextChanged="TB_queja_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_queja" ErrorMessage="*" ForeColor="White" ValidationGroup="v1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="B_PQR" runat="server" OnClick="B_PQR_Click" Text="Enviar PQR" ValidationGroup="v1" CssClass="nuevoEstilo33" />
        </td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
</table>
</asp:Content>

