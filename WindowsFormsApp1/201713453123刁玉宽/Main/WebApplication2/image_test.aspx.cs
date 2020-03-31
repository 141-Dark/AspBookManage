using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class image_test : System.Web.UI.Page
    {
        static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //
            string picurl = "image2/" + FileUpload2.FileName;
            
            string number = "无编号";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = con;
            con.Open();

            string sql = "insert into PictureTest(picture,number) values('" + picurl + "','" + number + "');";
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();

            Response.Write("图片上传成功");
            con.Close();
            //如何实现没有添加图片时在往数据库中增加默认图片？如何实现预览选中的图片？
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string path = Server.MapPath("image/");
               // Response.Write(path);

                //将图片上传保存到服务器（虚拟路径）
                FileUpload2.PostedFile.SaveAs(path + FileUpload2.FileName);
                //显示图片
                Image1.ImageUrl = "image/" + FileUpload2.FileName;   
            }
            catch (Exception)
            {
                Response.Write("未选择图片");
            }
        }

       
    }
}