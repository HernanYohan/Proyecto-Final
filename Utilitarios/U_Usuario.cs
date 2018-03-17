using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    public class U_Usuario
    {
        private Int32 user_id;

        public Int32 User_id
        {
            get { return user_id; }
            set { user_id = value; }
        }

        private String username;

        public String Username
        {
            get { return username; }
            set { username = value; }
        }
        private String clave;

        public String Clave
        {
            get { return clave; }
            set { clave = value; }
        }
        private String session;

        public String Session
        {
            get { return session; }
            set { session = value; }
        }
        private String ip;

        public String Ip
        {
            get { return ip; }
            set { ip = value; }
        }
        private String mac;

        public String Mac
        {
            get { return mac; }
            set { mac = value; }
        }

        private Int32 rol;

        public Int32 Rol
        {
            get { return rol; }
            set { rol = value; }
        }

        private String url;

        public String Url
        {
            get { return url; }
            set { url = value; }
        }

    }

}
