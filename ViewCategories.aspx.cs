using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class ViewCategories : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Grid_Bind();
        }
        public void Grid_Bind()
        {
            string load_query = "select * from category";
            DataSet ds = con.fun_ExecuteDataAdapter(load_query);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Grid_Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtName = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox txtDesc = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            FileUpload file1 = (FileUpload)GridView1.Rows[i].Cells[1].FindControl("FileUpload1");
            if (file1.HasFile)
            {
                string path = "~/images/" + file1.FileName;
                file1.SaveAs(MapPath(path));
                string image_query = "update category set cat_image='" + path + "' where category-id=" + id + "";
                con.fun_ExecuteNonQuery(image_query);
            }
            DropDownList ddstatus = (DropDownList)GridView1.Rows[i].Cells[3].FindControl("DropDownList1");
            string status = ddstatus.SelectedItem.Value;
            string up_query = "update category set cat_name='" + txtName.Text + "', cat_desc='" + txtDesc.Text + "',cat_status='" + status + "' where category_id=" + id + "";
            int res = con.fun_ExecuteNonQuery(up_query);
            if (res != 0)
            {
                Response.Write("<script>alert('category updated');</script>");
            }
            Grid_Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del_query = "delete from category where category_id=" + id + "";
            string del_product = "delete from product where category_id=" + id + "";
            con.fun_ExecuteNonQuery(del_query);
            con.fun_ExecuteNonQuery(del_product);
            Response.Write("<script>alert('catgory and related products deleted');</script>");
            Grid_Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Grid_Bind();
        }
    }
}