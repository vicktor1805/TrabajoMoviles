<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarDispositivo.aspx.cs" Inherits="CRUD.ActualizarDispositivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="content-wrapper">
          <h3>Actualizar Dispositivo</h3>
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
                <td class="auto-style1">Mac</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_act_mac" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Numero de Serie</td>
                <td>
                    <asp:TextBox ID="txt_act_ser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Fecha de Compra</td>
                <td>
                    <asp:TextBox ID="txt_act_comp" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
                 <tr>
                <td></td>
                <td>
                     <asp:Button ID="btn_upd_disp" runat="server" Text="Actualizar"  OnClick="btn_upd_disp_click" />
                     </td>
                <td></td>
            </tr>
        </table>
</asp:Content>
