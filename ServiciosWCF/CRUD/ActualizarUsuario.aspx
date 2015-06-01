<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarUsuario.aspx.cs" Inherits="CRUD.ActualizarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="content-wrapper">
          <h3>Actualizar Usuario</h3>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
           
         <tr>
                <td class="auto-style1">Id</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_act_id" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
        
            <tr>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_act_nom" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Identificador</td>
                <td>
                    <asp:TextBox ID="txt_act_ident" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txt_act_pass" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
                 <tr>
                <td></td>
                <td>
                     <asp:Button ID="btn_upd_user" runat="server" Text="Actualizar"  OnClick="btn_upd_user_click" />
                     </td>
                <td></td>
            </tr>
        </table>
</asp:Content>
