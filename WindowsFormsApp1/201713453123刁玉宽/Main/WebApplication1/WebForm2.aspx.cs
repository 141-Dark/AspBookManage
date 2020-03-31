using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string xb;
        protected void Page_Load(object sender, EventArgs e)
        {
            xb = "";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked) {
                xb = RadioButton2.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}