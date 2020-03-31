using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class AddBook : System.Web.UI.Page
    {
        static string str = @"Data Source=MSI;Initial Catalog=ManageBook;Integrated Security=True";
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string path = Server.MapPath("image/");
                //Response.Write(path);
                FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                //显示图片
                Image1.ImageUrl = "image/" + FileUpload1.FileName;
            }
            catch (Exception) {
                Response.Write("未选择图片");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //string bookname = TextBox1.Text;
           // string bookid = TextBox2.Text;
            //string press = TextBox3.Text;
            //string author = TextBox4.Text;
            string type = DropDownList1.Text;
            string picurl = "image/" + FileUpload1.FileName;
            string describe = TextArea1.InnerText;
            
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = con;//指定数据库连接对象
            con.Open();

            sqlcmd.CommandType = CommandType.StoredProcedure;//指定执行的对象是存储过程
            sqlcmd.CommandText = "proc_AddBook";//执行的存储过程的名称

            //为参数赋值
            sqlcmd.Parameters.Add("@bookname", SqlDbType.VarChar, 30).Value = TextBox1.Text;
            sqlcmd.Parameters.Add("@bookid", SqlDbType.Char, 12).Value = TextBox2.Text;
            sqlcmd.Parameters.Add("@press", SqlDbType.VarChar, 50).Value = TextBox3.Text;
            sqlcmd.Parameters.Add("@author", SqlDbType.VarChar, 50).Value = TextBox4.Text;
            sqlcmd.Parameters.Add("@type", SqlDbType.VarChar, 30).Value = type;

            //当没有选中图片时，添加默认图片
            if (FileUpload1.FileName =="") {
                sqlcmd.Parameters.Add("@picurl", SqlDbType.NVarChar, 100).Value = "image/defaultpicture.jpg";
            }
            else {
                sqlcmd.Parameters.Add("@picurl", SqlDbType.NVarChar, 100).Value = picurl;
            }

            //没有增加描述时，增加默认描述
            if (describe == "") {
                sqlcmd.Parameters.Add("@describe", SqlDbType.NVarChar, 200).Value = "该书籍还没有任何描述哦~";
            }
            else {
                sqlcmd.Parameters.Add("@describe", SqlDbType.NVarChar, 200).Value = describe;
            }

            if (Convert.ToInt32(sqlcmd.ExecuteNonQuery())>0) {
                // Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加成功');</script>");
                Response.Write("<script>alert('添加成功')</script>");
                con.Close();
            }
            else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加失败');</script>");
                con.Close();
            }
        }

        //将excel上传到服务器
        //protected string GetExcel() {
        //  string fileurl = "";//文件的路径
        //上传文件
        /*try {
            //获取文件全名
            string excelfile = this.FileUpload2.PostedFile.FileName;
            //获取文件名
            string filename = Path.GetFileNameWithoutExtension(FileUpload2.PostedFile.FileName);
            //获取文件扩展名(获取"."后面的元素)
            string extensionName = excelfile.Substring(excelfile.LastIndexOf(".")+1);
            //判断用户是否选择文件
            if (filename ==""||filename==null) {
                Response.Write("<script>alert('请选择excle文件')</script>");
                //没有选择文件，返回空值
                return null;
            }
            //判断用户选择的文件类型（必须是excel，不然格式判断会出问题）
            if (extensionName !="xls"||extensionName !="xlsx") {
                Response.Write("<script>alert('你选择的不是excle文件')</script>");
                return null; 
            }
            fileurl = Server.MapPath("excel/")+"xlsx";
            //FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
            //上传文件到服务器
            FileUpload2.PostedFile.SaveAs(fileurl);
            return fileurl;
        }
        catch (Exception) {
            Response.Write("<script>alert('文件上传失败')</script>");
            return null;
        }*/

        //        }

        //Excel导入DataTable
       /* public DataTable GetExcelDatatable(string filename,string savepath) {
            //string path = Server.MapPath("excel/");
            //Response.Write(path);
            //FileUpload2.PostedFile.SaveAs(path + FileUpload2.FileName);

            //C:\Users\DYK\Desktop\test.xlsx
            string cmdText = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = "+savepath+filename+"; Extended Properties = 'Excel 12.0; HDR=Yes; IMEX=1'";
            DataTable dt = null;
            OleDbConnection conn = new OleDbConnection(cmdText);

            //打开连接
            conn.Open();
            DataTable table = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables,null);
            //获取第一个Sheet的表名
           //string Sheet1 = table.Rows[0]["Sheet1"].ToString().Trim();
            //查询Sheet1中的数据
            string str = "select * from [Sheet1$]";
            //执行语句
            OleDbDataAdapter da = new OleDbDataAdapter(str,conn);
            DataSet ds = new DataSet();
            //da.Fill(ds,"0");
            da.Fill(ds);
            dt = ds.Tables[0];
            return dt;
        }*/

        //将DataTable中的数据导入数据库中
        /*protected void InsertData(DataTable dt) {
            string bookid = "";
            string bookname = "";
            string press = "";
            string author = "";
            string picture = "";
            string describe = "";
            string booktype = "";
            int i = 0;
            foreach (DataRow dr in dt.Rows) {
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

                /*sqlcmd.CommandType = CommandType.StoredProcedure;//指定执行的对象是存储过程
                sqlcmd.CommandText = "proc_AddBook";//执行的存储过程的名称

                //为参数赋值
                sqlcmd.Parameters.Add("@bookname", SqlDbType.VarChar, 30).Value = bookname;
                sqlcmd.Parameters.Add("@bookid", SqlDbType.Char, 12).Value = bookid;
                sqlcmd.Parameters.Add("@press", SqlDbType.VarChar, 50).Value = press;
                sqlcmd.Parameters.Add("@author", SqlDbType.VarChar, 50).Value = ;
                sqlcmd.Parameters.Add("@type", SqlDbType.VarChar, 30).Value = type;*/
           /*     string sql = "insert into Book(BookID,BookName,press,Author,picture,describe,booktype) values('" + bookid + "','" + bookname + "','" + press + "','" + author + "','" + picture + "','" + describe + "','" + booktype + "');";
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
                int count = Convert.ToInt32(com.ExecuteScalar());
                if (count!=0) {
                    i++;
                }

            }

        }*/

        protected void Button3_Click(object sender, EventArgs e)
        {
            // string fileUrl = this.GetExcel();
            /*string filename = FileUpload2.FileName;
            string savepath = Server.MapPath("~/excel/");
            this.InsertData(GetExcelDatatable(filename,savepath));*/
        }
    }

}