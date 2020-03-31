using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class BulkImport : System.Web.UI.Page
    {
        static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // string fileUrl = this.GetExcel();
            string filename = FileUpload1.FileName;
            string savepath = Server.MapPath("excel/");
            //如果不上传文件到服务器，那么导入的文件只可以是Webapplication2的内部文件
            FileUpload1.PostedFile.SaveAs(savepath + FileUpload1.FileName);
            this.InsertData(GetExcelDatatable(filename, savepath));
        }
        protected void InsertData(DataTable dt)
        {
            try {
                string bookid = "";
                string bookname = "";
                string press = "";
                string author = "";
                string picture = "";
                string describe = "";
                string booktype = "";
                int i = 1;
                int x = dt.Columns.Count;
                
                foreach (DataRow dr in dt.Rows)
                {
                    bookid = dr[0].ToString().Trim();//出去空格
                    bookname = dr[1].ToString().Trim();
                    press = dr[2].ToString().Trim();
                    author = dr[3].ToString().Trim();
                    picture = dr[4].ToString().Trim();
                    describe = dr[5].ToString().Trim();
                    booktype = dr[6].ToString().Trim();

                    SqlCommand sqlcmd = new SqlCommand();
                    sqlcmd.Connection = con;//指定数据库连接对象
                    con.Open();

                    string sql = "insert into Book(BookID,BookName,press,Author,picture,describe,booktype) values('" + bookid + "','" + bookname + "','" + press + "','" + author + "','" + picture + "','" + describe + "','" + booktype + "');";

                    SqlCommand com = new SqlCommand(sql, con);


                    //统计提交图书的本数
                    int count = Convert.ToInt32(com.ExecuteScalar());
                    if (count != 0)
                    {
                        i++;
                    }
                    con.Close();
                }
                //成功导入提醒
                Response.Write("图书导入成功");
            }
            catch (Exception) {
                Response.Write("图书添加失败，图书编号重复，请重新编辑或联系管理员");
            }

        }
        public DataTable GetExcelDatatable(string filename, string savepath)
        {
            
            //C:\Users\DYK\Desktop\test.xlsx
            string cmdText = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + savepath + filename + "; Extended Properties = 'Excel 12.0; HDR=Yes; IMEX=1'";
            DataTable dt = null;
            OleDbConnection conn = new OleDbConnection(cmdText);

            //打开连接
            conn.Open();
            DataTable table = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            //获取第一个Sheet的表名
            //string Sheet1 = table.Rows[0]["Sheet1"].ToString().Trim();
            //查询Sheet1中的数据
            string str = "select * from [Sheet1$]";
            //执行语句
            OleDbDataAdapter da = new OleDbDataAdapter(str, conn);
            DataSet ds = new DataSet();
            //da.Fill(ds,"0");
            da.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
            return dt;
        }
    }
}