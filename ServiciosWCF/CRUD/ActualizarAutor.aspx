<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarAutor.aspx.cs" Inherits="CRUD.ActualizarAutor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="content-wrapper">
          <h3>Actualizar Autor</h3>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
           <tr>
                <td>Id</td>
                <td>
                    <asp:TextBox ID="txt_upd_id" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            <tr>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_upd_nom" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Fecha de Nacimiento</td>
                <td>
                    <asp:TextBox ID="txt_upd_nacim" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nacionalidad</td>
                <td>
                    <asp:TextBox ID="txt_upd_nacion" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
                 <tr>
                <td></td>
                <td>
                    <asp:Button ID="btn_upd_aut" runat="server" Text="Actualizar"  OnClick="btn_upd_aut_click" />
                     </td>
                <td></td>
            </tr>
        </table>


</asp:Content>
