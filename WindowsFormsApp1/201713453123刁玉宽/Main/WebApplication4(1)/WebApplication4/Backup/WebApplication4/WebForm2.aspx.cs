using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string passwd="";
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = @"Data Source=.;Initial Catalog=book;Integrated Security=True;Pooling=False";
            SqlConnection co = new SqlConnection(conStr);
            string cmdStr = "select xm,mm from yhb where xm =@name and mm=@pass";
            SqlCommand cmd = new SqlCommand(cmdStr, co);
            cmd.Parameters.Add("@name", SqlDbType.Char);
            cmd.Parameters.Add("@pass", SqlDbType.Char);
            cmd.Parameters[0].Value = TextBox1.Text;
            cmd.Parameters[1].Value = TextBox2.Text;
            try {
                co.Open();
               SqlDataReader dr = cmd.ExecuteReader();
               if (dr.Read())
                   Label1.Text = "登录成功！";
               else
                   Label1.Text = "用户名或密码错误！";
               dr.Close();
                            
            
            }
            catch (Exception err) { Response.Write(err.Message); }
            finally{
                if (co.State == ConnectionState.Open)
                    co.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ToString());
            string cmdStr = "insert into yhb (xm,mm) values(@uxm,@umm)";
            SqlCommand cmd = new SqlCommand(cmdStr,co);
            cmd.Parameters.Add("@uxm", SqlDbType.Char);
            cmd.Parameters.Add("@umm", SqlDbType.Char);
            cmd.Parameters[0].Value = TextBox3.Text;
            cmd.Parameters[1].Value = passwd;
            try { co.Open();
            int k = cmd.ExecuteNonQuery();
            if (k > 0)
                Label3.Text = "注册成功！";
             else
                Label3.Text = "注册失败！";
            
            
            }
            catch (Exception err) { Response.Write(err.Message); }
            finally {
                if (co.State == ConnectionState.Open)
                {
                    co.Close();
                }
            }




        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            if(TextBox5.Text.Trim().Equals(TextBox4.Text.Trim()))
            {
                passwd = TextBox5.Text.Trim();
                Label2.Text = "";
               Label2.Text = "√"; 

            }
            else
            { Label2.Text="密码不一致！";
             TextBox4.Text="";
           }
            Response.Write("你输入了" + TextBox5.Text);
        }
    }
}