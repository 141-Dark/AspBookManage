using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.User
{
    public partial class User_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = this.TextBox1.Text;
            string pwd = this.TextBox2.Text;

            string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);//连接数据库
            con.Open();
            Response.Write("第步");
            String select = "select* from [dbo].[User] where Name = '" + name + "' and Pwd = '" + pwd + "'";
            SqlCommand cmd = new SqlCommand(select,con);  //执行SQL命令
            Response.Write("第二步");
            SqlDataReader sr = (SqlDataReader)cmd.ExecuteReader();

            //2、判断数据库中是否含有该用户
            if(sr.HasRows)
            {
                Response.Write("<script>window.open('MainOfAfter.aspx','_blank')</script>");
                //HttpContext.Current.Response.Redirect("MainOfAfter.aspx", false);
                Session["User_Name"] = name;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('账号或者密码错误!');</script>");
                TextBox1.Text = " ";
                TextBox2.Text = " ";
            }
            //关闭数据库
            con.Close();
        }
    }
}