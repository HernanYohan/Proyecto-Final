<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/MaterPage.master" AutoEventWireup="true" CodeFile="~/controladores/Tanques.aspx.cs" Inherits="vistas_Tanques" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Label ID="Lb_tanques_v" runat="server" Text="Tanques "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_tanques_c" runat="server" align="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="Tanques" GridLines="Horizontal" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="referencia" HeaderText="Referencia" />
                        <asp:BoundField DataField="valor_c" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Imagenes">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="42px" ImageUrl='<%# Eval("url_imagen") %>' Width="36px" OnClick="ImageButton4_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="Tanques" runat="server" SelectMethod="mostaraTanques" TypeName="Logica.L_Catologo"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

