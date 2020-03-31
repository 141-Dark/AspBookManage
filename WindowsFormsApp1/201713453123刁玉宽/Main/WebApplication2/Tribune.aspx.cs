using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Tribune : System.Web.UI.Page
    {
       static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
        SqlConnection con = new SqlConnection(str);
        //设置4个随机数
        int a, b, c, d, e;

        //随机数
        Random rmd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                //设置随机数编号
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);

                //转换成字符串
                string TID = a.ToString() + b.ToString() + c.ToString() + d.ToString();
                string tid = "13";
                //设置默认管理员工号和匿名管理员
                int AID = 123;
                string Aname = "匿名";

                string TribuneName = TextBox1.Text;
                string describe = TextArea1.InnerText;

                string file = "file/" + FileUpload1.FileName;
                string img = "image/" + FileUpload2.FileName;

                //没有添加文件时增加一段话加以说明
                if (FileUpload1.FileName == "")
                {
                    file = "没有添加任何文件哦";
                }

                //没有添加图片时添加一张默认图片
                if (FileUpload2.FileName == "")
                {
                    img = "image/defaultpicture.jpg";
                }
                //数据库连接字符串
                string sql = "insert into Tribune(AID,AName,TID,TName,describe,appendix,picture) values('" + AID + "','" + Aname + "','" + TID + "','" + TribuneName + "','" + describe + "','" + file + "','" + img + "');";

                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;//指定数据库连接对象
                con.Open();

                SqlCommand com = new SqlCommand(sql, con);

                //sqlcmd.ExecuteNonQuery();

                //com.ExecuteNonQuery(sql);
                int count = Convert.ToInt32(com.ExecuteScalar());
                if (count >= 0)
                {
                    Response.Write("添加成功");
                    con.Close();
                }
                else
                {
                    Response.Write("插入失败");
                }

                con.Close();
            }

            catch (Exception) {
                Response.Write("你还没有写入相关内容，请填写");
            }
        }

        //清空所有内容
        protected void Button2_Click(object sender, EventArgs e)
        {

            TextBox1.Text = "";
            TextArea1.InnerText = "";

            Response.Write("清空成功");
        }
    }
}