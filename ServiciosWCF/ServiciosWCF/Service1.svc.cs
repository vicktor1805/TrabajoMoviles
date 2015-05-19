using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ServiciosWCF.Classes;

namespace ServiciosWCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service1 : IService1
    {

        public List<String> sistemasOperativos()
        {
            List<String> lista = new List<string>();
            lista.Add("IOS");
            lista.Add("Android");
            lista.Add("Windows 10");

            return lista;
        }

        public String resgistrarLibro(Libro libro)
        {
            if (libro == null)
            {
                throw new ArgumentNullException("libro");
            }

            return "Se registro el libro ["+libro.Nombre+"] correctamente ";
        }

        public String postTwitter(PostTwitter postTwitter)
        {
            return "El usuario: ["+postTwitter.UserName+"] posteo: ["+postTwitter.UserPost+"] correctamente";
        }

        public List<Alumno> listarAlumnosCriteria(String condicion)
        {
            List<Alumno> aux = new List<Alumno>();
            List<Alumno> listReturn = new List<Alumno>();
            for (int i = 0; i < 10; ++i)
            {
                Alumno a = new Alumno();
                a.Nombre = "Nombre " + (i + 1);
                if (i % 2 == 0)
                {
                    a.Estado = "Aprobado";
                }
                else
                {
                    a.Estado = "Desaprobado";
                }
                aux.Add(a);
            }

            if (condicion.Equals("Todos"))
            {
                return aux;
            }

            foreach(Alumno a in aux)
            {
                if (a.Estado.Equals(condicion))
                {
                    listReturn.Add(a);
                }
            }
            return listReturn;
        }

        public List<UsuarioDC> obtenerUsuarios()
        {
            Moviles2DataContext dc = new Moviles2DataContext();
            var usuarios = from a in dc.Usuario select a;
            List<UsuarioDC> usuariosDC = new List<UsuarioDC>();
            foreach(Usuario usu in usuarios){

                UsuarioDC usuarioDC = new UsuarioDC();
                usuarioDC.Id = usu.id;
                usuarioDC.Nombre = usu.nombre;
                usuarioDC.Identificador = usu.identificador;
                usuarioDC.Password = usu.password;
                usuariosDC.Add(usuarioDC);
            }
            return usuariosDC;
        }

        public Boolean registrarUsuario(UsuarioDC usuarioDC)
        {
            Usuario u = new Usuario();
            u.identificador = usuarioDC.Identificador;
            u.nombre = usuarioDC.Nombre;
            u.password = usuarioDC.Password;

            Moviles2DataContext dc = new Moviles2DataContext();
            dc.Usuario.InsertOnSubmit(u);

            dc.SubmitChanges();
            
            return true;
        }

        public Boolean actualizarUsuario(UsuarioDC usuarioDC)
        {
            Moviles2DataContext dc = new Moviles2DataContext();
            Usuario u = (from usu in dc.Usuario where usu.id == usuarioDC.Id select usu).SingleOrDefault();
            u.identificador = usuarioDC.Identificador;
            u.nombre = usuarioDC.Nombre;
            u.password = usuarioDC.Password;

            dc.SubmitChanges();
            
            return true;
        }

        public UsuarioDC obtenerUsuario(int usuarioID)
        {
            Moviles2DataContext dc = new Moviles2DataContext();
            Usuario u = (from usu in dc.Usuario where usu.id == usuarioID select usu).SingleOrDefault();
            UsuarioDC usuarioDC = new UsuarioDC();

            usuarioDC.Id = u.id;
            usuarioDC.Nombre = u.nombre;
            usuarioDC.Identificador = u.identificador;
            usuarioDC.Password = u.password;

            return usuarioDC;
        }

        public Boolean borrarUsuario(int usuarioID)
        {
            Moviles2DataContext dc = new Moviles2DataContext();
            Usuario u = (from usu in dc.Usuario where usu.id == usuarioID select usu).SingleOrDefault();

            dc.Usuario.DeleteOnSubmit(u);
            dc.SubmitChanges();
            return true;
        }
    }
}
