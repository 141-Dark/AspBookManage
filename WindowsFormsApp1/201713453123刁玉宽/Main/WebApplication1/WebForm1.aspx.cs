using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            /*string id = this.TextBox1.Text;
            string password = this.TextBox2.Text;

            string str = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);//连接数据库
            con.Open();
            String select = "select* from Administrator where AdministratorID =  '" + id + "'  and Pwd =  '" + password + "' ";

            SqlCommand cmd = new SqlCommand(select, con);  //执行SQL命令
            SqlDataReader sr = cmd.ExecuteReader();*/
            string constr = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=SHAREBOOK;Integrated Security=True";
            SqlConnection co = new SqlConnection(constr);
            string cmdstr = "select AdministratorID,Pwd where AdministratorID = @AID,Pwd = @passwprd";
            SqlCommand cmd = new SqlCommand(cmdstr, co);
            cmd.Parameters.Add("@Administrator",SqlDbType.Char);
            cmd.Parameters.Add("@password", SqlDbType.Char);
            cmd.Parameters[0].Value = TextBox1.Text;
            cmd.Parameters[1].Value = TextBox2.Text;

            try
            {
                co.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = "登录成功";
                }
                else
                {
                    Label1.Text = "用户名或密码错误";
                }
            }
            catch (Exception err)
            {
                Response.Write(err.Message);
            }
            finally {
                if (co.State == ConnectionState.Open) {
                    co.Close();
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}