<%@ Page Title="" Language="C#" ValidateRequest ="false" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/ModificarProveedor.aspx.cs" Inherits="ModificarProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style6 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <br />
                <table class="auto-style6">
                    <tr>
                        <td>
    <asp:Label ID="Lb_modificar_proveedor" runat="server" CssClass="auto-style2" Text="Modificar Proveedor"></asp:Label>
                        </td>
                        <td rowspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:GridView ID="GV_modificar_p" runat="server" align="Center" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_proveedor" DataSourceID="proveedor" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <table class="auto-style6">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="T_nombre" runat="server" MaxLength="15" Text='<%# Bind("nombre") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="T_nombre" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="T_telefono" runat="server" Text='<%# Bind("telefono") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="T_telefono" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_telefono" runat="server" ControlToValidate="T_telefono" ErrorMessage="Maximo 12 digitos" ForeColor="White" ValidationExpression="\d{1,12}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo">
                            <EditItemTemplate>
                                <asp:TextBox ID="T_correo" runat="server" MaxLength="20" Text='<%# Bind("correo") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="T_correo" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_correo" runat="server" ControlToValidate="T_correo" ErrorMessage="No es una correo &quot;@&quot;,&quot;.&quot;" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Modificar" ShowEditButton="True" />
                        <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
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
                    </tr>
                </table>
                <asp:ObjectDataSource ID="proveedor" runat="server" DeleteMethod="eliminarproveedor" SelectMethod="mostrarproveedor" TypeName="Logica.L_Proveedor" UpdateMethod="editarproveedor">
                    <DeleteParameters>
                        <asp:Parameter Name="id_proveedor" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_proveedor" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="telefono" Type="Double" />
                        <asp:Parameter Name="correo" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

