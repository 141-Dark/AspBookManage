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

namespace Book
{


    public partial class ViewBook : Form
    {

    

        public ViewBook()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

       

        private void button2_Click(object sender, EventArgs e)
        {
            string conStr = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=SHAREBOOK;Integrated Security=True";
            SqlConnection co = new SqlConnection(conStr);//连接数据库
            co.Open();//打开连接 
            //利用数据适配器连接数据库，调用存储过程ViewBook_SQL
            SqlDataAdapter sda = new SqlDataAdapter("ViewBook_SQL", co);
            DataSet ds = new DataSet();
            sda.Fill(ds);
           
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 r1 = new Form1();
            r1.Show();
        }
    }
}
