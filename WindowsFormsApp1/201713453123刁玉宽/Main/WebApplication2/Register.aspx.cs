using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{

    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string AID = TextBox1.Text;   //获取管理员工号
            string pwd = TextBox2.Text;           //获得第一次输入密码
            string agePqd = TextBox3.Text;   //获得第二次输入的密码

            if (agePqd.Equals(pwd))
            {
                string name = TextBox4.Text;    //获得用户输入的名字
                string mail = TextBox5.Text;   //获取用户的邮箱
                string phone = TextBox6.Text;  //获得用户输入的电话
                string gender = string.Empty;      //获得用户输入的性别
                int ischeck = 0;

                if (RadioButton1.Checked)
                {
                    gender = "男";
                }
                else
                {
                    gender = "女";
                }
                
                string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True"; 
                SqlConnection con = new SqlConnection(str);

                con.Open();

                string sql = "insert into Administrator(AdministratorID,Pwd,mail,AdministratorName,AdministratorSex,PhoneNumber,ischeck) values('" + AID + "','" + pwd + "','" + mail + "','" + name + "','" + gender + "','" + phone + "','" + ischeck+ "');";
                SqlCommand com = new SqlCommand(sql, con);
               
                    int count = Convert.ToInt32(com.ExecuteScalar());
                    if (count >= 0)
                    {
                        SendMail();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('管理员注册成功！请前往邮箱验证激活');</script>");
                        con.Close();
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('两次输入密码不匹配！');</script>");
                    }
                
                
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请检查输入是否有误！');</script>");
                con.Close();
                
            }
        }

        private void SendMail()
        {
            //int ischeck = 1;
            //int aid = 2023;
            MailMessage mail1 = new MailMessage();
            //系统邮箱地址
            mail1.From = new MailAddress("1418273501@qq.com");
            //邮件主题
            mail1.Subject = "点击验证";
            mail1.Body = "<a href = 'http://localhost:61835/Activation.aspx?AID =" + TextBox1.Text + "'>点击激活您的账号</a>";
            //发送到目标邮箱
            mail1.To.Add(this.TextBox5.Text);
            //邮件正文是否可以点击链接跳转
            mail1.IsBodyHtml = true;
            SmtpClient sct = new SmtpClient();
            //qq的smtp地址
            sct.Host = "smtp.qq.com";
            //smtp的端口为25
            sct.Port = 25;
            //输入邮箱用户名与密码(密码是QQ邮箱生成的授权码)
            NetworkCredential networkCredential = new NetworkCredential("1418273501@qq.com", "jgxmoimroilcgigi");
            sct.Credentials = networkCredential;
            sct.Send(mail1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox6.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}