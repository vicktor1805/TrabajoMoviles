using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Runtime.Serialization;

namespace ServiciosWCF.Classes
{
    [DataContract]
    public class UsuarioDC
    {
        private int id;

        [DataMember]
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private String nombre;

        [DataMember]
        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private String identificador;

        [DataMember]
        public String Identificador
        {
            get { return identificador; }
            set { identificador = value; }
        }
        private String password;

        [DataMember]
        public String Password
        {
            get { return password; }
            set { password = value; }
        }

    }
}