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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ToString());
            string cmdStr = "select * from city ";
            //SqlCommand cmd = new SqlCommand(cmdStr);
            SqlDataAdapter sda = new SqlDataAdapter(cmdStr, co);
            DataSet ds = new DataSet();
            co.Open();

            sda.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataValueField = "province";
            DropDownList3.DataBind();
            DropDownList2.DataSource = ds;
            DropDownList2.DataValueField = "city";
            DropDownList2.DataBind();
            co.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ToString());
            string cmdStr = "select * from city ";
            //SqlCommand cmd = new SqlCommand(cmdStr);
            SqlDataAdapter sda = new SqlDataAdapter(cmdStr, co);
            DataSet ds = new DataSet();
            co.Open();

            sda.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataValueField = "province";
            DropDownList1.DataBind();
            DropDownList2.DataSource = ds;
            DropDownList2.DataValueField = "city";
            DropDownList2.DataBind();
            co.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList3.SelectedValue.ToString();
        }
    }
}