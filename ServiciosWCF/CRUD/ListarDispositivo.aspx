<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarDispositivo.aspx.cs" Inherits="CRUD.ListarDispositivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
   <div class="content-wrapper">
          <h3>Listar Dispositivo</h3>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <table style="width:100%;">
            
            <tr>
                <asp:Table ID="tb_list_disp" runat="server"></asp:Table>
            </tr>
            
        </table>
</asp:Content>
