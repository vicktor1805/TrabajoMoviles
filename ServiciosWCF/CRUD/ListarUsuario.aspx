<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarUsuario.aspx.cs" Inherits="CRUD.ListarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
   <div class="content-wrapper">
          <h3>Listar Usuario</h3>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <table style="width:100%;">
            
            <tr>
                <asp:Table ID="tb_list_user" runat="server"></asp:Table>
            </tr>
            
        </table>
</asp:Content>
