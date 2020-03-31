using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class BookIformation : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-LN6U8T\BEST;Initial Catalog=ManageBook;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)

        {

            GridView1.EditIndex = e.NewEditIndex;

            this.shuaxin();

        }
        private void shuaxin()

        {
        
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();

            SqlDataAdapter da = new SqlDataAdapter(@"select * from Book", sqlcon);

            DataSet ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)

            {

                GridView1.DataSource = ds;

                GridView1.DataBind();

            }

            sqlcon.Close();

        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)

        {

            this.GridView1.EditIndex = e.RowIndex;

            string title = GridView1.DataKeys[e.RowIndex].Value.ToString();

            string cotent = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[1])).Text;



            string strsql = "update Book set BookName='" + cotent + "'";

            SqlConnection con = new SqlConnection(str);

            SqlCommand cmd = new SqlCommand(strsql, con);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            GridView1.EditIndex = -1;

            this.shuaxin();

        }
    }
}