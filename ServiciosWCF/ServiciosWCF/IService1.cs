using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ServiciosWCF.Classes;

namespace ServiciosWCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IService1
    {

        [WebInvoke(Method="GET",ResponseFormat=WebMessageFormat.Json,RequestFormat=WebMessageFormat.Json,BodyStyle=WebMessageBodyStyle.WrappedRequest,UriTemplate="/Sistemas")]
        [OperationContract]
        List<String> sistemasOperativos();

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        String resgistrarLibro(Libro libro);

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        List<Alumno> listarAlumnosCriteria(String condicion);

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        String postTwitter(PostTwitter postTwitter);

        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        List<UsuarioDC> obtenerUsuarios();

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        Boolean registrarUsuario(UsuarioDC usuarioDC);

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        Boolean actualizarUsuario(UsuarioDC usuarioDC);

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        UsuarioDC obtenerUsuario(int usuarioID);

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Bare)]
        [OperationContract]
        Boolean borrarUsuario(int usuarioID);
    }


    

    [DataContract]
    public class Libro
    {
        private String nombre;
        private String autor;

        [DataMember]
        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        [DataMember]
        public String Autor
        {
            get { return autor; }
            set { autor = value; }
        }

    }

    [DataContract]
    public class PostTwitter
    {
        private String userName;
        private String userPassword;
        private String userPost;

        [DataMember]
        public String UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        [DataMember]
        public String UserPassword
        {
            get { return userPassword; }
            set { userPassword = value; }
        }

        [DataMember]
        public String UserPost
        {
            get { return userPost; }
            set { userPost = value; }
        }
        
    }

    [DataContract]
    public class Alumno
    {
        private String nombre;
        private String estado;

        [DataMember]
        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        [DataMember]
        public String Estado
        {
            get { return estado; }
            set { estado = value; }
        }

    }
}
