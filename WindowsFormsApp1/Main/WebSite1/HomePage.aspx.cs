using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class HomePage : System.Web.UI.Page
    {
        int a, b, c, d;

        protected void Code_TextChanged(object sender, EventArgs e)
        {
            if (Code.Text == "")
            {
                Label5.Text = "请输入验证码";
                a = rdm.Next(9);
                b = rdm.Next(9);
                c = rdm.Next(9);
                d = rdm.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else if (Code.Text != Label4.Text)
            {
                Label5.Text = "验证码错误";
                a = rdm.Next(9);
                b = rdm.Next(9);
                c = rdm.Next(9);
                d = rdm.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else
            {
                Label5.Text = "√";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('Register.aspx','_blank')</script>");
        }

        Random rdm = new Random();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            a = rdm.Next(9);
            b = rdm.Next(9);
            c = rdm.Next(9);
            d = rdm.Next(9);
            Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            
        }

        protected void Landing_Click(object sender, EventArgs e)
        {
            if (User.Text == "") {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入账号！');</script>");
            }
            
            if (Register.Text == "") {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入密码！');</script>");
            }
            if (Code.Text == "") {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入验证码！');</script>");
                a = rdm.Next(9);
                b = rdm.Next(9);
                c = rdm.Next(9);
                d = rdm.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
                
            }
            else
            {
                Label5.Text = "";
                string id = this.User.Text;
                string password = this.Register.Text;

                string str = @"Data Source=DESKTOP-LN6U8T\BEST;Initial Catalog=ManageBook;Integrated Security=True";
                SqlConnection co = new SqlConnection(str);//连接数据库
                co.Open();
                String select = "select* from Administrator where AdministratorID =  '" + id + "'  and Pwd =  '" + password + "' ";

                //执行SQL命令
                SqlCommand cmd = new SqlCommand(select, co); 
                SqlDataReader sr = cmd.ExecuteReader();

                //匹配成功跳转
                if (sr.HasRows) {
                    HttpContext.Current.Response.Redirect("Manage.aspx",false);
                }
                else {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('账号或者密码错误！');</script>");
                    User.Text = " ";      //清空输入的用户名
                    Register.Text = " ";  //清空输入的密码
                }
                co.Close();
            }
        }
    }
}