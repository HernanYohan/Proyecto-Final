using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Runtime.InteropServices;
using System.Net;

namespace Utilidades
{
    public class Mac
    {
        public Mac()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }
        /*CLASE QUE SE ENCARGA DE RETORNAR MAC ADDRESS DEL USUARIO DEL SISTEMA 
         */

        [DllImport("iphlpapi.dll", ExactSpelling = true)]
        public static extern int SendARP(int DestIP, int SrcIP, [Out] byte[] pMacAddr, ref int PhyAddrLen);

        public static string GetMAC(ref string IP)
        {
            string MAC = null;

            try
            {
                if (IPAddress.Parse(IP).Equals(IPAddress.Parse("127.0.0.1")) || IPAddress.Parse(IP).Equals(IPAddress.Parse("::1")))
                {
                    System.Net.IPHostEntry iPHostEntry = Dns.GetHostEntry(HttpContext.Current.Server.MachineName);

                    IP = iPHostEntry.AddressList[1].ToString();
                }

                System.Net.IPAddress ipAddress = IPAddress.Parse(IP);

                byte[] ab = new byte[6];
                int len = ab.Length;

                int r = SendARP((int)ipAddress.Address, 0, ab, ref len);
                MAC = BitConverter.ToString(ab, 0, 6);
            }
            catch (Exception)
            {
                MAC = null;
            }

            return MAC;
        }
    }
}
