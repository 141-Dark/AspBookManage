using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Admin
{
    public partial class picture : Form
    {
        public picture()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            OpenFileDialog open1 = new OpenFileDialog();
            DialogResult isok = open1.ShowDialog();
            if (isok == DialogResult.OK)
            {
                string filename = open1.FileName;
                FileStream fs = new FileStream(filename, FileMode.Open);
                Image img = Image.FromStream(fs);
                pictureBox1.Image = img;
                fs.Close();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OpenFileDialog open1 = new OpenFileDialog();
            DialogResult isok = open1.ShowDialog();
            if (isok == DialogResult.OK)
            {
                //根据路径读取图片，把图片存到数据库
                string filename = open1.FileName;
                FileStream fs = new FileStream(filename, FileMode.Open);
                BinaryReader br = new BinaryReader(fs);//二进制读取器
                byte[] buffer = br.ReadBytes((int)fs.Length);//图片数据进去到buffer中
                br.Close();
                fs.Close();

                //SqlConnection conn = new SqlConnection("server=.;database=图片;user=sa;pwd=123");
                //SqlCommand cmd = conn.CreateCommand();
                //
                string str = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";
                SqlConnection con = new SqlConnection(str);//连接数据库
                con.Open();
               // String select = "select* from Administrator where AdministratorName =  '" + name + "' "; 
                SqlCommand cmd = new SqlCommand();  //执行SQL命令
                SqlDataReader sr = cmd.ExecuteReader();
                
                cmd.CommandText = "insert into tupian values(@image)";
                cmd.Parameters.Clear();
                cmd.Parameters.Add("@image", buffer);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("server=.;database=图片;user=sa;pwd=123");
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select *from tupian where id=1";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                byte[] buffer = (byte[])dr["image"];
                MemoryStream ms = new MemoryStream(buffer);
                Image img = Image.FromStream(ms);
                pictureBox1.Image = img;
            }
            conn.Close();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
