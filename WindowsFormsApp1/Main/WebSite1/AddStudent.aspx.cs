using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.AddUser
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = DataBase.createDatabase();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                string str = "select * from tb_Picture";
                SqlDataAdapter da = new SqlDataAdapter(str, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "tb_Picture");
                this.droppicture.DataSource = ds.Tables["tb_Picture"];
                this.droppicture.DataTextField = "photo";
                this.droppicture.DataBind();
                this.imgpicture.ImageUrl = this.droppicture.SelectedValue;
                con.Close();
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
  

            string AID = TextBox1.Text;   //获取输入的学号
            string name = TextBox2.Text;       //获取输入的姓名
            string school = TextBox3.Text;   //获取输入的学院
            string cla = TextBox4.Text;         //获得用户输入的班级 
            string phone = TextBox5.Text;  //获得用户输入的电话
            string gender = string.Empty;      //获得用户输入的性别
                if (RadioButton1.Checked)
                {
                    gender = "男";
                }
                else
                {
                    gender = "女";
                }


            SqlConnection con = DataBase.createDatabase();
            con.Open();

               
            SqlTransaction stc = con.BeginTransaction(); 
            SqlCommand com = con.CreateCommand();
            com.Transaction = stc;
            try {
                string sql = "insert into Student(StudentID,StudentName,StudentSex,School,Class,PhoneNumber,Logo) values('" + AID + "', '" + name + "', '" + gender + "', '" + school + "', '" + phone + "', '" + this.droppicture.SelectedItem.Text.ToString() + "'); ";
                com.ExecuteNonQuery();
                stc.Commit();
            }
            catch (Exception) {
                stc.Rollback();
                
            }
               
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册成功！');</script>");

                    con.Close();
               
            }
        

        protected void droppicture_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.imgpicture.ImageUrl = this.droppicture.SelectedValue;
        }
    }
}