using importImage;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Picture : Form
    {
        public Picture()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Class1 c1 = new Class1();
            string id = "10002";
            //调用方法  传递两个参数  编号，图片的路径
            bool aa = c1.InsertPerImage(id, Image.FromFile(@"E:\数据库查询UI界面\图片\7.jpg"));
            MessageBox.Show(aa.ToString());   //如果返回为true 则添加成功

        }

    }
}
