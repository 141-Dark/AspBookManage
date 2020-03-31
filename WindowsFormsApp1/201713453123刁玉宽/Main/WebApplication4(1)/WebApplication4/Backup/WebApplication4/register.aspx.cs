using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class register : System.Web.UI.Page
    {
        string xb,address,passwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            xb = "";
            address = "";
           
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
                xb = RadioButton1.Text;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
                xb = RadioButton2.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ToString());
            string cmdStr = "insert into yhb (xm,mm,xb,address) values(@uxm,@umm,@xb,@add)";
            SqlCommand cmd = new SqlCommand(cmdStr, co);
            cmd.Parameters.Add("@uxm", SqlDbType.Char);
            cmd.Parameters.Add("@umm", SqlDbType.Char);
            cmd.Parameters.Add("@xb", SqlDbType.Char);
            cmd.Parameters.Add("@add", SqlDbType.Char);
            cmd.Parameters[0].Value = TextBox1.Text;
            cmd.Parameters[1].Value = passwd;
            cmd.Parameters[2].Value = xb;
            cmd.Parameters[3].Value = address;
            try
            {
                co.Open();
                int k = cmd.ExecuteNonQuery();
                if (k > 0)
                    Label3.Text = "注册成功！";
                else
                    Label3.Text = "注册失败！";


            }
            catch (Exception err) { Response.Write(err.Message); }
            finally
            {
                if (co.State == ConnectionState.Open)
                {
                    co.Close();
                }
            }



        }

        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ToString());
            string cmdStr = "select city from city where province='"
            + DropDownList1.SelectedValue.ToString() + "' ";
           // SqlCommand cmd = new SqlCommand(cmdStr);
           // SqlDataReader dr= cmd.ExecuteReader();
           // dr.Read();
            SqlDataAdapter sda = new SqlDataAdapter(cmdStr, co);
            DataSet ds = new DataSet();//数据集

            Table t1 = new Table();
            co.Open();

            sda.Fill(ds,"t1");
            

            DropDownList2.DataSource = ds.Tables["t1"];
            DropDownList2.DataValueField = "city";
            DropDownList2.DataBind();
            co.Close();
           
            

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }
    }
}