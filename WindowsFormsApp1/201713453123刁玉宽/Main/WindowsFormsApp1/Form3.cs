using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApp1
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string conStr = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=SHAREBOOK;Integrated Security=True";
            SqlConnection co = new SqlConnection(conStr);//连接数据库
            string cmdstr = "select* from Book";
            SqlCommand cmd = new SqlCommand(cmdstr, co);//创建命令

            co.Open();//打开连接
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {//判断1是否读到一个记录
             //
                label1.Text = label1.Text + dr[0]+"   " + dr[1].ToString()+"   " +
                    dr[2].ToString()+"      " + dr[3].ToString()+"  " + dr[4].ToString()+"  "+ dr[5].ToString() + "  "+dr[6].ToString() + "  "+dr[7].ToString() + "  " + "\n";

                
            }
            co.Close();
        }

        private void splitContainer1_Panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
