using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace importImage
{
    class Class1
    {

        private SqlConnection ConnectionOpen()
        {
            string connectionString = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            return conn;
        }

        public static byte[] ImageToBytes(Image image)
        {
            if (image == null)
            {
                return null;
            }
            ImageFormat format = image.RawFormat;
            using (MemoryStream ms = new MemoryStream())
            {
                if (format.Equals(ImageFormat.Jpeg))
                {
                    image.Save(ms, ImageFormat.Jpeg);
                }
                else if (format.Equals(ImageFormat.Png))
                {
                    image.Save(ms, ImageFormat.Png);
                }
                else if (format.Equals(ImageFormat.Bmp))
                {
                    image.Save(ms, ImageFormat.Bmp);
                }
                else if (format.Equals(ImageFormat.Gif))
                {
                    image.Save(ms, ImageFormat.Gif);
                }
                else if (format.Equals(ImageFormat.Icon))
                {
                    image.Save(ms, ImageFormat.Icon);
                }
                byte[] buffer = new byte[ms.Length];
                //Image.Save()会改变MemoryStream的Position，需要重新Seek到Begin
                ms.Seek(0, SeekOrigin.Begin);
                ms.Read(buffer, 0, buffer.Length);
                return buffer;
            }
        }
        public bool InsertPerImage(string rowAutoID, Image perImage)
        {
            SqlConnection conn = ConnectionOpen();

            int i = 0;
            if (perImage == null)
            {
                SqlCommand com = new SqlCommand("insert into UserPhoto(UserID) values('100020')", conn);
                com.Parameters.Add("UserID", SqlDbType.VarChar);//数据库里userID是varchar，这里转换为varchar
                com.Parameters["UserID"].Value = rowAutoID;
                i = com.ExecuteNonQuery();
            }
            else
            {
                SqlCommand com = new SqlCommand("insert into tb_Picture(UserID,photo) values(@UserID,@photo)", conn);
                com.Parameters.Add("UserID", SqlDbType.VarChar);
                com.Parameters["UserID"].Value = rowAutoID;

                com.Parameters.Add("photo", SqlDbType.Image);
                com.Parameters["photo"].Value = ImageToBytes(perImage);//调用方法将图片转换为二进制
                i = com.ExecuteNonQuery();//返回受影响的函数
            }
            if (i > 0)
            {
                conn.Close();
                return true;
            }
            else
            {
                conn.Close();
                return false;
            }
        }
    }
}

