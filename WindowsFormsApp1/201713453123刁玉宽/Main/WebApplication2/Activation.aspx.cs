using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{

    public partial class Activation : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int AID = Convert.ToInt32(Request["AID"]);

            //AID = Request.QueryString["AID"];
            // '
            string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
            
            SqlConnection con = new SqlConnection(str);//连接数据库
            con.Open();
            string select = "update Administrator set ischeck = 1 where AdministratorID = '"+AID+"'";
            SqlCommand cmd2 = new SqlCommand(select,con);  //执行SQL命令
            cmd2.ExecuteNonQuery();
            con.Close();
            //Response.Write("激活成功!<a href='HomePage.aspx'>返回登录</a>");
            HttpContext.Current.Response.Redirect("HomePage.aspx", false);

        }
    }
}