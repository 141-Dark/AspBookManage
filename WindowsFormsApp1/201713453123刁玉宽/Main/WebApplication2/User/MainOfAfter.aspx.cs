using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.User
{
    public partial class MainOfAfter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Text = Session["User_Name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}