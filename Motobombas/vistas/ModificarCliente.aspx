<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/ModificarCliente.aspx.cs" Inherits="ModificarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style3">
                <table class="auto-style2">
                    <tr>
                        <td>
                            <table class="auto-style2">
                                <tr>
                                    <td>
                                        <asp:Label ID="Lb_ver_u" runat="server" style="color: #FFFFFF; font-size: xx-large" Text="Ver Ususarios"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                <asp:GridView ID="GV_listaclientes" runat="server" align="Center" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_cliente" DataSourceID="Cliente" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GV_listaclientes_SelectedIndexChanged" OnRowUpdating="GV_listaclientes_RowUpdating" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <table class="auto-style2">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="T_nombre" runat="server" MaxLength="15" Text='<%# Bind("nombre") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="T_nombre" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ControlToValidate="T_nombre" ErrorMessage="Solo letras" ForeColor="Black" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido">
                            <EditItemTemplate>
                                <table class="auto-style2">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="T_apellido" runat="server" MaxLength="15" Text='<%# Bind("apellido") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="requerido" runat="server" ControlToValidate="T_apellido" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_apellido" runat="server" ControlToValidate="T_apellido" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
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
                                <asp:TextBox ID="T_direccion" runat="server" MaxLength="20" Text='<%# Bind("direccion") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="T_direccion" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <table class="auto-style2">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="T_telefono" runat="server" Text='<%# Bind("telefono") %>' TextMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="T_telefono" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_telefono" runat="server" ControlToValidate="T_telefono" ErrorMessage="Maximo 12 digitos" ForeColor="White" ValidationExpression="\d{1,12}"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo">
                            <EditItemTemplate>
                                <asp:TextBox ID="T_correo" runat="server" Text='<%# Bind("correo") %>' MaxLength="17"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="T_correo" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="T_correo" ErrorMessage="No es un correo &quot;@&quot;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Clave">
                            <EditItemTemplate>
                                <asp:TextBox ID="T_clave" runat="server" MaxLength="15" Text='<%# Bind("clave") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="T_clave" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("clave") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rol">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_rol" runat="server" OnSelectedIndexChanged="DDL_rol_SelectedIndexChanged">
                                    <asp:ListItem Value="0">Seleccione Rol</asp:ListItem>
                                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                                    <asp:ListItem>Cliente</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("id_rol") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="Modificar" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:ObjectDataSource ID="Cliente" runat="server" DeleteMethod="eliminarcliente" SelectMethod="mostrarcliente" TypeName="Logica.L_Cliente" UpdateMethod="Editarcliente">
                    <DeleteParameters>
                        <asp:Parameter Name="id_cliente" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_cliente" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="telefono" Type="Double" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="clave" Type="String" />
                        <asp:Parameter Name="id_rol" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

