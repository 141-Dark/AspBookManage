using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ImagePost : System.Web.UI.Page
    {
        static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
        SqlConnection con = new SqlConnection(str);

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                //存入虚拟路径
                string picurl = "~/photo/" + FileUpload2.FileName;
              
                //获取文件内容长度
                int len = FileUpload2.PostedFile.ContentLength;
                //获取上传文件的字节数
                byte[] photo = new byte[FileUpload2.PostedFile.ContentLength];
                //通过http协议将文件上传到服务器
                HttpPostedFile img = FileUpload2.PostedFile;
                //第一个字节存储读入元素photo[0],下一个photo[0+1],以此类推。读取的字节数是最多等于len。
                img.InputStream.Read(photo, 0, len);
                
                //数据库代码
                string str = " INSERT INTO PostImageThree(picture)VALUES(@binary)";

                SqlCommand com = new SqlCommand(str, con);

                com.Parameters.Add("@binary", SqlDbType.Binary, photo.Length);

                com.Parameters["@binary"].Value = photo;

                con.Open();

                com.ExecuteNonQuery();

                //判断是否添加成功
                int count = Convert.ToInt32(com.ExecuteScalar());
                if (count > 0)
                {
                    Response.Write("添加成功");
                }
                con.Close();

                //将上传的照片（直接输出只有System.byte[],看不出有没有上传到数据库）转换成字符串显示出来，用于判断是否成功
                string stringstr = Convert.ToBase64String(photo);
                this.Response.Write(stringstr);
            }
            catch (Exception) {
                Response.Write("出错，请检查"); 
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        { 
            con.Open();
            SqlCommand com = new SqlCommand("Select picture from PostImageThree", con);   //选择图片
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())                                                
            {
                Response.BinaryWrite((byte[])dr["picture"]);
            }
            //字节读完记得关闭
            Response.End();
            con.Close();
        }
    }
}