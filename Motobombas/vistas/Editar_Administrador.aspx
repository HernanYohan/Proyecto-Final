<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/Editar_Administrador.aspx.cs" Inherits="vistas_Editar_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="GV_editar_administrador" runat="server" align="Center" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Edit_adminstrador" ForeColor="#333333" GridLines="None" DataKeyNames="id_cliente" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TB_nombre" runat="server" MaxLength="15" Text='<%# Bind("nombre") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_nombre" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_nombre" runat="server" ControlToValidate="TB_nombre" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
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
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TB_apellido" runat="server" MaxLength="15" Text='<%# Bind("apellido") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_apellido" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="REV_apellido" runat="server" ControlToValidate="TB_apellido" ErrorMessage="Solo letras" ForeColor="White" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
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
                                <asp:TextBox ID="TB_direccion" runat="server" Text='<%# Bind("direccion") %>' MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_direccion" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_telefono" runat="server" Text='<%# Bind("telefono") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_telefono" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_telefono" runat="server" ControlToValidate="TB_telefono" ErrorMessage="Maximo 12 digitos" ForeColor="White" ValidationExpression="\d{1,12}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_correo" runat="server" Text='<%# Bind("correo") %>' MaxLength="22"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="No es un correo &quot;@&quot;,&quot;.&quot;" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Clave">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_clave" runat="server" Text='<%# Bind("clave") %>' MaxLength="15"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_clave" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("clave") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Modificar" ShowEditButton="True" />
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
                <asp:ObjectDataSource ID="Edit_adminstrador" runat="server" SelectMethod="editar_perfil" TypeName="Logica.L_usuario" UpdateMethod="editar_perfil_usuario">
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
        </tr>
    </table>
</asp:Content>

