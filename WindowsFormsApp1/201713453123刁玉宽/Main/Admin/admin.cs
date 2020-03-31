using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Book;

namespace Admin
{
    public partial class admin : Form
    {
        ViewBook vb = new ViewBook();
        ViewBorrowing vbr = new ViewBorrowing();
        ViewRecommendation vr = new ViewRecommendation();
        
        public admin()
        {
            InitializeComponent();
            //this.panel3.Controls.Add(vb);
            //this.panel3.Controls.Add(vbr);
            //this.panel3.Controls.Add(vr);
            vb.TopLevel = false;
            vb.Dock = DockStyle.Fill;//把子窗体设置为控件
            vb.FormBorderStyle = FormBorderStyle.None;
            panel3.Controls.Add(vb);

            vr.TopLevel = false;
            vr.Dock = DockStyle.Fill;//把子窗体设置为控件
            vr.FormBorderStyle = FormBorderStyle.None;
            panel3.Controls.Add(vr);

            vbr.TopLevel = false;
            vbr.Dock = DockStyle.Fill;//把子窗体设置为控件
            vbr.FormBorderStyle = FormBorderStyle.None;
            panel3.Controls.Add(vbr);

            panel4.Show();
            vb.Show();
            vbr.Show();
            vr.Show();
            panel4.Visible = true;
            vb.Visible = false;
            vr.Visible = false;
            vbr.Visible = false;
        }

        private void navBarControl1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            pictureBox1.Show();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            ControlPaint.DrawBorder(e.Graphics, panel1.ClientRectangle,
          Color.White, 1, ButtonBorderStyle.Solid, //左边
　　　　　Color.White, 1, ButtonBorderStyle.Solid, //上边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid, //右边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid);//底边);
            //this.panel1.BackColor = Color.Transparent;//将Panel设为透明
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {
            //this.panel3.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //this.panel3.Controls.Clear();
            /*panel3.Show();
            ViewBook vb = new ViewBook();
            vb.TopLevel = false;
            vb.Dock = DockStyle.Fill;//把子窗体设置为控件

            vb.FormBorderStyle = FormBorderStyle.None;
            panel3.Controls.Add(vb);
            vb.Show();*/
            vb.Visible = true;
            vr.Visible = false;
            vbr.Visible = false;
            panel4.Visible = false;

        }
        private void panel4_Paint(object sender, PaintEventArgs e)
        {
            //this.panel4.Hide();
        }
        private void button3_Click(object sender, EventArgs e)
        {
            //this.panel4.Controls.Clear();
            /* panel4.Show();
             ViewBorrowing vbr = new ViewBorrowing();
             vbr.TopLevel = false;
             vbr.Dock = DockStyle.Fill;//把子窗体设置为控件

             vbr.FormBorderStyle = FormBorderStyle.None;
             panel4.Controls.Add(vbr);
             vbr.Show();*/
            vb.Visible = false;
            vr.Visible = true;
            vbr.Visible = false;
            panel4.Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            /*   panel3.Show();
               ViewRecommendation vr = new ViewRecommendation();
               vr.TopLevel = false;
               vr.Dock = DockStyle.Fill;//把子窗体设置为控件

               vr.FormBorderStyle = FormBorderStyle.None;
               panel3.Controls.Add(vr);
               vr.Show();*/
            vb.Visible = false;
            vr.Visible = false;
            vbr.Visible = true;
            panel4.Visible = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void panel4_Paint_1(object sender, PaintEventArgs e)
        {

        }
    }
}
