<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
          <h3>CRUD</h3>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
   <div>
        <table style="width: 100%;">
           
            <tr>
               
                <td>Articulo</td>
                
            </tr>
            <tr>
                <td><a href="InsertarArticulo.aspx">Insertar</a></td>
                <td><a href="ActualizarArticulo.aspx">Actualizar</a></td>
                <td>
                    <asp:TextBox ID="txt_art_id" runat="server" placeholder="Id"></asp:TextBox>
                
                </td>
                <td>
                   <asp:Button ID="btn_del_art" runat="server" Text="Borrar" OnClick="btn_del_art_Click" /></td>   
            </tr>
            <tr>
               
                <td>Autor</td>
                
            </tr>
            <tr>
                <td><a href="InsertarAutor.aspx">Insertar</a></td>
                <td><a href="ActualizarAutor.aspx">Actualizar</a></td>
                <td>
                    <asp:TextBox ID="txt_autor_id" runat="server" placeholder="Id"></asp:TextBox>
              
                </td>
                <td>
                    <asp:Button ID="btn_del_aut" runat="server" Text="Borrar" OnClick="btn_del_aut_Click" /></td>
            </tr>
            <tr>
               
                <td>Usuario</td>
                
            </tr>
            <tr>
                 <td><a href="InsertarUsuario.aspx">Insertar</a></td>
                <td><a href="ActualizarUsuario.aspx">Actualizar</a></td>
                <td>
                    <asp:TextBox ID="txt_user_id" runat="server" placeholder="Id"></asp:TextBox>
              
                </td>
                <td>
                    <asp:Button ID="btn_del_user" runat="server" Text="Borrar" OnClick="btn_del_user_Click" /></td>
            </tr>
<tr>
               
                <td>Dispositivo</td>
                
            </tr>
            <tr>
                  <td><a href="InsertarDispositivo.aspx">Insertar</a></td>
                <td><a href="ActualizarDispositivo.aspx">Actualizar</a></td>
                <td>
                    <asp:TextBox ID="txt_disp_id" runat="server" placeholder="Id"></asp:TextBox>
              
                </td>
                <td>
                    <asp:Button ID="btn_del_disp" runat="server" Text="Borrar" OnClick="btn_del_disp_Click" /></td>
            </tr>

        

        </table>
   </div>
</asp:Content>
