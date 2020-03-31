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
using Admin;

namespace WindowsFormsApp1
{
    public partial class administrator : Form
    {
        int a, b, c, d;
        Random rmd = new Random();
        Form2 f2 = new Form2();
        Form3 f3 = new Form3();
        admin ad = new admin();//跳转管理员端
        registe re = new registe();//跳转注册端

        public administrator()
        {
            Bitmap bm = new Bitmap("E:/数据库查询UI界面/图片/7.jpg"); //fbImage图片路径
            this.BackgroundImage = bm;//设置背景图片
            this.BackgroundImageLayout = ImageLayout.Stretch;//设置背景图片自动适应 
            InitializeComponent(); 
        }
        
        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "") {
                MessageBox.Show("请输入账号");
            }

            if (textBox2.Text == "") {
                MessageBox.Show("请输入密码");
            }
            if (textBox3.Text == "") {
                label5.Text = "输入验证码";
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else
            {
                if (textBox3.Text != label4.Text)
                {
                    label5.Text = "验证码错误";
                    a = rmd.Next(9);
                    b = rmd.Next(9);
                    c = rmd.Next(9);
                    d = rmd.Next(9);
                    label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
                }

                else {
                    label5.Text = "";
                    string id = this.textBox1.Text;
                    string password = this.textBox2.Text;
                    
                    string str = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";
                    SqlConnection con = new SqlConnection(str);//连接数据库
                    con.Open();
                    String select = "select* from Administrator where AdministratorID =  '"+id+"'  and Pwd =  '"+password+"' ";

                    SqlCommand cmd = new SqlCommand(select, con);  //执行SQL命令
                    SqlDataReader sr = cmd.ExecuteReader();

                    //密码与账户匹配成功则跳转到管理员端页面
                    if (sr.HasRows)
                    {
                        ad.Show(); 
                      
                    }

                    /*
                     学生端跳转页面待写
                     教师端跳转页面待写
                     */     

                    else {
                        MessageBox.Show("用户名和密码错误");
                        textBox1.Text = "";
                        textBox2.Text = "";

                    }
                    con.Close();
                }
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
          ControlPaint.DrawBorder(e.Graphics, panel1.ClientRectangle,
          Color.White, 1, ButtonBorderStyle.Solid, //左边
　　　　　Color.White, 1, ButtonBorderStyle.Solid, //上边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid, //右边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid);//底边);
          this.panel1.BackColor = Color.Transparent;//将Panel设为透明
        }

        private void button2_Click(object sender, EventArgs e)
        {
            /* string conStr = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=SHAREBOOK;Integrated Security=True";
             SqlConnection co = new SqlConnection(conStr);//连接数据库
             string cmdstr = "select* from Book";
             string cmdstr1 = "select id,password from Operater where id = textBox1.Text and password = textBox2.Text";

             SqlCommand cmd = new SqlCommand(cmdstr,co);//创建命令
             SqlCommand cmd1 = new SqlCommand(cmdstr1,co);

             co.Open();//打开连接
             SqlDataReader dr = cmd.ExecuteReader();
             SqlDataReader dr1 = cmd1.ExecuteReader();
             while (dr.Read()) {//判断1是否读到一个记录

                     label7.Text = label7.Text + dr[0].ToString() + dr[1].ToString() + dr[2].ToString() + dr[3].ToString() + dr[4].ToString();
             }
             if (dr1.Read()) {

             }
             co.Close();*/
           
                re.Show();
        }

       
        private void Form1_Load(object sender, EventArgs e)
        {
            a = rmd.Next(9);
            b = rmd.Next(9);
            c = rmd.Next(9);
            d = rmd.Next(9);
            label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            // label1.Text=this.
            //panel1.Location = new Point(this.ClientRectangle.Width/2+panel1.Width/2,this.Height/2);
            
           
           
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_MouseLeave(object sender, EventArgs e)
        {
            if (textBox3.Text == "")
            {
                label5.Text = "请输入验证码";
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else if (textBox3.Text != label4.Text)
            {
                label5.Text = "验证码错误";
                a = rmd.Next(9);
                b = rmd.Next(9);
                c = rmd.Next(9);
                d = rmd.Next(9);
                label4.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();
            }
            else {
                label5.Text = "正确";
            }
        }

        //内存优化
        [System.Runtime.InteropServices.DllImportAttribute("kernel32.dll", EntryPoint = "SetProcessWorkingSetSize", ExactSpelling = true, CharSet =
          System.Runtime.InteropServices.CharSet.Ansi, SetLastError = true)]
        private static extern int SetProcessWorkingSetSize(IntPtr process, int minimumWorkingSetSize, int maximumWorkingSetSize);

        public void Dispose()
        {
            GC.Collect();
            GC.SuppressFinalize(this);

            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
            {
                SetProcessWorkingSetSize(System.Diagnostics.Process.GetCurrentProcess().Handle, -1, -1);
            }
        }
    }
}
