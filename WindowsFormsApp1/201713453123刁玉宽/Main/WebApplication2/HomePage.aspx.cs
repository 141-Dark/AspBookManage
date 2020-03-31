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

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                Label5.Text = "请输入验证码";
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else if (TextBox3.Text != Label4.Text)
            {
                Label5.Text = "验证码错误";
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else
            {
                Label5.Text = "正确";
            }
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('Register.aspx','_blank')</script>");
        }

        Random rmd = new Random();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            a = rmd.Next(9);
            b = rmd.Next(9);
            c = rmd.Next(9);
            d = rmd.Next(9);
            Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入账号！');</script>");
            }
            

            if (TextBox2.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入密码！');</script>");
            }
            if (TextBox3.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入验证码！');</script>");
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                Label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
                
            }
          
            else
            {
           
                Label5.Text = "";
                string id = this.TextBox1.Text;
                string password = this.TextBox2.Text;
                //check为激活码初始值，0代表未激活，1代表已激活
                int check = 0;
                //连接1号数据库
                string str1 = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
                SqlConnection con1 = new SqlConnection(str1);//连接数据库
                con1.Open();    
                String select1 = "select* from Administrator where ischeck = '" + check + "'";
                
                SqlCommand cmd1 = new SqlCommand(select1, con1);  //执行SQL命令
                SqlDataReader sr1 = cmd1.ExecuteReader();

                //1、判断账号是否被激活
                if (sr1.HasRows)
                {
                    //关闭1号数据库
                    sr1.Close();
                    con1.Close();

                    //连接2号数据库
                    string str2 = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
                    SqlConnection con2 = new SqlConnection(str2);//连接数据库
                    con2.Open();
                    String select2 = "select* from Administrator where AdministratorID =  '" + id + "'  and Pwd =  '" + password + "'";
                    SqlCommand cmd2 = new SqlCommand(select2,con2);  //执行SQL命令
                    SqlDataReader sr2 = cmd2.ExecuteReader();

                    //2、判断数据库中是否含有该用户
                    if (sr2.HasRows)
                    {
                        HttpContext.Current.Response.Redirect("Manage.aspx",false);
                    }
                    else {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('账号或者密码错误!');</script>");
                            TextBox1.Text = " ";
                            TextBox2.Text = " ";
                     }
                    //关闭2号数据库
                    con2.Close();
                    }

                    /*
                     学生端跳转页面待写
                     教师端跳转页面待写
                     */

                else{
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('账号没有激活，请联系管理员!');</script>");
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                }
            }
        }
    }
}