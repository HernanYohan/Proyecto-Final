<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MP_administrador.master" AutoEventWireup="true" CodeFile="~/controladores/ModificarProducto.aspx.cs" Inherits="ModificarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            margin-left: 22px;
        }
        .auto-style5 {
            margin-left: 6px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Lb_productos" runat="server" CssClass="auto-style3" Text="Productos"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                <asp:GridView ID="GV_ver_productos" runat="server" align="Center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_producto" DataSourceID="producto" ForeColor="#333333" GridLines="None" AllowPaging="True" EmptyDataText="No hay datos" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Marca">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_marca1" runat="server" MaxLength="20" Text='<%# Bind("marca") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_0" runat="server" ControlToValidate="TB_marca1" ErrorMessage="*" style="color: #FFFFFF"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TB_marca1" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("marca") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Valor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_valor1" runat="server" MaxLength="10" Text='<%# Bind("valor") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_1" runat="server" ControlToValidate="TB_valor1" ErrorMessage="*" style="color: #FFFFFF"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TB_valor1" ErrorMessage="Maximo 9 digitos:" style="color: #FF0000" ValidationExpression="\d{1,9}" ForeColor="White"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("valor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cantidad">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_cantidad1" runat="server" MaxLength="10" Text='<%# Bind("cantidad") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_2" runat="server" ControlToValidate="TB_cantidad1" ErrorMessage="*" style="color: #FFFFFF"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TB_cantidad1" ErrorMessage="Maximo 4 digitos" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\d{1,4}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("cantidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Categoria">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_categoria" runat="server">
                                    <asp:ListItem Value="0">Seleccione Categoria</asp:ListItem>
                                    <asp:ListItem Value="1">Bombas</asp:ListItem>
                                    <asp:ListItem Value="2">Tanques</asp:ListItem>
                                    <asp:ListItem Value="3">Accesorios</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("id_categoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Referencia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_referencia1" runat="server" MaxLength="20" Text='<%# Bind("referencia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("referencia") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FU_imagen" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="auto-style9">
                                    <tr>
                                        <td class="auto-style10">
                                            <asp:Image width="80px" ID="Image1" runat="server" ImageUrl='<%# Eval("url_imagen") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Modificar" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Eliminar" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
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
                <asp:ObjectDataSource ID="producto" runat="server" SelectMethod="mostrarproductos" TypeName="Logica.L_productos" DeleteMethod="eliminarproducto">
                    <DeleteParameters>
                        <asp:Parameter Name="id_producto" Type="Int32" />
                    </DeleteParameters>
                   
                </asp:ObjectDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

