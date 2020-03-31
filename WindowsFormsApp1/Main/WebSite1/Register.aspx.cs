using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
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

        protected void Save_Click(object sender, EventArgs e)
        {
            string AID = TextBox1.Text;   //获取管理员工号
            string pwd = TextBox2.Text;   //获取第一次输入密码
            string agePqd = TextBox3.Text;   //获取第二次输入的密码
            if (agePqd.Equals(pwd))
            {
                string name = TextBox4.Text;   //获取名字 
                string phone = TextBox6.Text;  //获取电话
                string gender = string.Empty;  //获取性别
                if (Save.Checked)
                {
                    gender = "男";
                }
                else
                {
                    gender = "女";
                }


                string str = @"Data Source=DESKTOP-LN6U8T\BEST;Initial Catalog=ManageBook;Integrated Security=True";
                SqlConnection con = new SqlConnection(str);

                con.Open();

                string sql = "insert into Administrator(AdministratorID,Pwd,AdministratorName,AdministratorSex,PhoneNumber) values('" + AID + "','" + pwd + "','" + name + "','" + gender + "','" + phone + "');";
                SqlCommand com = new SqlCommand(sql, con);

                int count = Convert.ToInt32(com.ExecuteScalar());
                if (count >= 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('管理员注册成功！');</script>");
                    //txtstudentnumber.Text = count.ToString();
                   
                    con.Close();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('两次输入密码不匹配！');</script>");
                }
            }
        }

        protected void Del_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox6.Text = " ";
            TextBox4.Text = " ";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}