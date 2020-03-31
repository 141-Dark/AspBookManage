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
    public partial class registe : Form
    {
        string str = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";
        public registe()
        {
            InitializeComponent();
        }

        private void registe_Load(object sender, EventArgs e)
        {
           
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
          ControlPaint.DrawBorder(e.Graphics, panel1.ClientRectangle,
          Color.White, 1, ButtonBorderStyle.Solid, //左边
　　　　　Color.White, 1, ButtonBorderStyle.Solid, //上边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid, //右边
　　　　　Color.DimGray, 1, ButtonBorderStyle.Solid);//底边);

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
          ControlPaint.DrawBorder(e.Graphics, panel2.ClientRectangle,
          Color.White, 1, ButtonBorderStyle.Solid, //左边
          Color.White, 1, ButtonBorderStyle.Solid, //上边
          Color.DimGray, 1, ButtonBorderStyle.Solid, //右边
          Color.DimGray, 1, ButtonBorderStyle.Solid);//底边);

        }

        private void button1_Click(object sender, EventArgs e)
        {
           /* if (textBox1.Text == " "|| textBox1.Text == " "|| textBox2.Text == ""|| textBox3.Text == " "||textBox4.Text == " "|| textBox1.Text == " ")
            {
                MessageBox.Show("内容不可以为空，请重新输入！");
                this.Dispose();
                
            }*/
            
            string AID = textBox1.Text;   //获取管理员工号
            string pwd = textBox2.Text;           //获得第一次输入密码
            string agePqd = textBox3.Text;   //获得第二次输入的密码
            if (!agePqd.Equals(pwd))
            {
              MessageBox.Show("两次输入的密码不一致!", "用户提示", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                }
            else
                {
                string name = textBox4.Text;         //获得用户输入的名字 
                string phone = textBox5.Text;  //获得用户输入的电话
                string gender = string.Empty;      //获得用户输入的性别
                if (radioButton1.Checked)
                {
                    gender = "男";
                }
                else
                {
                    gender = "女";
                }
                
                String sqlselect = "select count(*) from Administrator where AdministratorID = '" + textBox1.Text + "'";
                string sqlinsert = "insert into Administrator(AdministratorID,Pwd,AdministratorName,AdministratorSex,PhoneNumber) values('" + AID + "','" + pwd + "','" + name + "','" + gender + "','" + phone + "');";
                //连接到数据库
                SqlConnection con = new SqlConnection(str);
                //执行连接语句
                SqlCommand cmd = new SqlCommand(sqlselect, con);
                con.Open();
                if ((int)cmd.ExecuteScalar() > 0)
                {
                    con.Close();
                    MessageBox.Show("用户id存在");
                }

                else {
                    SqlCommand cmd2 = new SqlCommand(sqlinsert, con);
                    int count = Convert.ToInt32(cmd2.ExecuteScalar());
                    if (count >= 0)
                    {
                        DialogResult result = MessageBox.Show("注册成功!", "用户提示", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                        //txtstudentnumber.Text = count.ToString();
                        if (result == DialogResult.Yes)
                        {
                            this.Close();
                        }

                        con.Close();
                    }
                }
                
            }
        }

        //清空已填信息
        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = " ";
            textBox2.Text = " ";
            textBox3.Text = " ";
            textBox5.Text = " ";
            textBox4.Text = " ";
            
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

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
          
    }

