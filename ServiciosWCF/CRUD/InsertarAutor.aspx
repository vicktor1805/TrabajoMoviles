<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertarAutor.aspx.cs" Inherits="CRUD.InsertarAutor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
  <div class="content-wrapper">
          <h3>Insertar Autor</h3>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
  <tr>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_ins_nom" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Fecha de Nacimiento</td>
                <td>
                    <asp:TextBox ID="txt_ins_nacim" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nacionalidad</td>
                <td>
                    <asp:TextBox ID="txt_ins_nacion" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
                 <tr>
                <td></td>
                <td>
                    <asp:Button ID="btn_ins_aut" runat="server" Text="Insertar"  OnClick="btn_ins_aut_click" />
                     </td>
                <td></td>
            </tr>
        </table>
</asp:Content>
