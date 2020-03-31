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
        
         static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
         SqlConnection conn = new SqlConnection(str);
        //创建一个分页对象
        static PagedDataSource pds = new PagedDataSource();

        //加载页面时，调用BindDataList对数据进行绑定
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList(0);
            }
        }

        private void BindDataList(int current) {
            pds.AllowPaging = true;//允许分页
            pds.PageSize = 2;//页面中显示的数据行数为2
            pds.CurrentPageIndex = current;//为当前页面传入一个int类型的数值
            string sql = "select BookName,Author,picture,booktype,describe from Book";
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql,conn);//执行得到一个数据集
            DataSet ds = new DataSet();//新建一个数据集
            sda.Fill(ds);//将执行得到的数据放到数据集中
            pds.DataSource = ds.Tables[0].DefaultView;//将数据集中的数据默认放到分页数据源中
            DataList1.DataSource = pds;//绑定DataList
            DataList1.DataSourceID = null;
            DataList1.DataBind();
            conn.Close();
        }
        
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)

        {

            //GridView1.EditIndex = e.NewEditIndex;

            this.shuaxin();

        }
        private void shuaxin()

        {
        
           /* SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();

            SqlDataAdapter da = new SqlDataAdapter(@"select * from Book", sqlcon);

            DataSet ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)

            {

                //GridView1.DataSource = ds;

               // GridView1.DataBind();

            }

            sqlcon.Close();*/

        }
        /*protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)

        {

           /* this.GridView1.EditIndex = e.RowIndex;

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

        }*/

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
           // Response.Write("执行到这");
            if (e.Item.ItemType == ListItemType.Footer) {
                //获取模板中的控件
                Label CurrentPage = e.Item.FindControl("labCurrentPage") as Label;
                Label PageCount = e.Item.FindControl("labPageCount") as Label;
                LinkButton FirstPage = e.Item.FindControl("lnkbtnFirst") as LinkButton;
                LinkButton PrePage = e.Item.FindControl("lnkbtnFront") as LinkButton;
                LinkButton NextPage = e.Item.FindControl("lnkbtnNext") as LinkButton;
                LinkButton LastPage = e.Item.FindControl("lnkbtnLast") as LinkButton;

                CurrentPage.Text = (pds.CurrentPageIndex + 1).ToString();//绑定显示当前页数
                PageCount.Text = pds.PageCount.ToString();//总页数
                //如果是第一页，则首页和上一页不可用
                if (pds.IsFirstPage) {
                    FirstPage.Enabled = false;
                    PrePage.Enabled = false;
                }
                //如果是尾页，则下一页和尾页不可以用
                if (pds.IsLastPage) {
                    NextPage.Enabled = false;
                    LastPage.Enabled = false;
                }

            }
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e) {
            
            switch (e.CommandName) {
                case "first":
                    pds.CurrentPageIndex = 0;
                    BindDataList(pds.CurrentPageIndex);
                    break;

                case "pre":
                    pds.CurrentPageIndex = pds.CurrentPageIndex-1;
                    BindDataList(pds.CurrentPageIndex);
                    break;
                case "next":
                    pds.CurrentPageIndex = pds.CurrentPageIndex+1;
                    BindDataList(pds.CurrentPageIndex);
                    break;
                case "last":
                    pds.CurrentPageIndex = pds.PageCount-1;
                    BindDataList(pds.CurrentPageIndex);
                    break;
                //页面跳转
                case "search":
                    if (e.Item.ItemType == ListItemType.Footer) {
                        int PageCount = int.Parse(pds.PageCount.ToString());
                        //获取DataList中的控件
                        TextBox text = e.Item.FindControl("TextBox1") as TextBox;
                        int page_num = 0;
                        //如果不为空则将文本框中的内容赋值给page_num
                        if (!text.Text.Equals("")) {
                            page_num = Convert.ToInt32(text.Text.ToString());
                        }
                        if (page_num<=0||page_num>PageCount) {
                            Response.Write("<script>alert('输入的页数不存在')</script>");
                        }
                        else{
                            BindDataList(page_num-1);
                        }
                    }
                    break;
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}