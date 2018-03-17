<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/controladores/editar_perfil.aspx.cs" Inherits="editar_perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style24 {
        width: 100%;
    }
    .nuevoEstilo15 {
        color: #FFFFFF;
        text-align: center;
    }
    .auto-style25 {
        width: 267px;
    }
        .auto-style26 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
    <tr>
        <td class="nuevoEstilo15" colspan="3">
            <asp:Label ID="Lb_editar_perfil" runat="server" Text="Editar Perfil"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="nuevoEstilo15">
            &nbsp;</td>
        <td class="nuevoEstilo15">
            &nbsp;</td>
        <td class="nuevoEstilo15" rowspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo15" colspan="2">
            <asp:GridView ID="GV_editar_perfil" runat="server" align="Center" AutoGenerateColumns="False" DataSourceID="perfil" DataKeyNames="id_cliente" OnSelectedIndexChanged="GV_editar_perfil_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField HeaderText="Nombre">
                        <EditItemTemplate>
                            <table class="auto-style26">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TB_nombre1" runat="server" MaxLength="20" Text='<%# Bind("nombre") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_nombre1" ErrorMessage="*" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:RangeValidator ID="RV_nombre" runat="server" ControlToValidate="TB_nombre1" ErrorMessage="Solo letras , primera en mayuscula ." ForeColor="Black" MaximumValue="Z,z" MinimumValue="A,a"></asp:RangeValidator>
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <EditItemTemplate>
                            <table class="auto-style26">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TB_apellido1" runat="server" MaxLength="15" Text='<%# Bind("apellido") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_apellido1" ErrorMessage="*" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:RangeValidator ID="RV_apellido" runat="server" ControlToValidate="TB_apellido1" ErrorMessage="Solo letras , primera en mayuscula ." ForeColor="Black" MaximumValue="Z,z" MinimumValue="A,a"></asp:RangeValidator>
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Direccion">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_direccion1" runat="server" MaxLength="30" Text='<%# Bind("direccion") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_direccion1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_telefono" runat="server" Text='<%# Bind("telefono") %>' TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_telefono" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_telefono" runat="server" ControlToValidate="TB_telefono" ErrorMessage="Maximo 12 digitos" style="color: #FF0000" ValidationExpression="\d{1,12}" ForeColor="Black"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Clave">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_clave" runat="server" Text='<%# Bind("clave") %>' MaxLength="18"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_clave" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("clave") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_correo" runat="server" Text='<%# Bind("correo") %>' MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_correo" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="No es un correo &quot;@&quot;,&quot;.&quot;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            </td>
    </tr>
    <tr>
        <td class="auto-style25" colspan="2">
            <asp:ObjectDataSource ID="perfil" runat="server" SelectMethod="editar_perfil" TypeName="Logica.L_usuario" UpdateMethod="editar_perfil_usuario">
                <SelectParameters>
                    <asp:SessionParameter Name="id_cliente" SessionField="id_usuaro" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id_cliente" Type="Int32" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="Double" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="clave" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

