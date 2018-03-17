<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/MP/cliente.master" AutoEventWireup="true" CodeFile="~/Reporte_clien/controlador/Rortes_Total.aspx.cs" Inherits="vistas_Rortes_Total" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CR:CrystalReportViewer ID="CRV_Total" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ReportSourceID="CRS_Total" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
    <CR:CrystalReportSource ID="CRS_Total" runat="server">
        <Report FileName="C:\Users\user\Documents\GitHub\ultimo\Motobombas\Reporte_clien\Reporte\Report_Factura_Cliente.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>

