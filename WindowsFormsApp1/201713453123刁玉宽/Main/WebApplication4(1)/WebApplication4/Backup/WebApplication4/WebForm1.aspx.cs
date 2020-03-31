using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = @"Data Source=.;Initial Catalog=book;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(conStr);
            string cmdStr = "select xm,mm from yhb where xm ='@name' and mm ='@pwd'";
            SqlCommand cmd = new SqlCommand(cmdStr,con);
           
            
            

             
        }
    }
}