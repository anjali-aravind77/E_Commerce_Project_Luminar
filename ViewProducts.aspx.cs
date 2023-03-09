using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Data_GridBind();

        }
        public void Data_GridBind()
        {
            string load_query = "select * from product";
            DataSet ds = con.fun_ExecuteDataAdapter(load_query);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del_query = "delete from product where prod_id=" + id + "";
            con.fun_ExecuteNonQuery(del_query);
            Response.Write("<script>alert('product deleted');</script>");
            Data_GridBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Data_GridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Data_GridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtName = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox txtDesc = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtPrice = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            FileUpload file1 = (FileUpload)GridView1.Rows[i].Cells[1].FindControl("FileUpload1");
            if (file1.HasFile)
            {
                string path = "~/images/" + file1.FileName;
                file1.SaveAs(MapPath(path));
                string query = "update product set prod_image='" + path + "' where prod_id=" + id + "";
                con.fun_ExecuteNonQuery(query);
            }
            DropDownList ddstatus = (DropDownList)GridView1.Rows[i].Cells[4].FindControl("DropDownList2");
            string status = ddstatus.SelectedItem.Value;
            DropDownList ddstock = (DropDownList)GridView1.Rows[i].Cells[5].FindControl("DropDownList1");
            string stock = ddstock.SelectedItem.Value;
           
            string up_query = "update product set prod_name='" + txtName.Text + "', prod_desc='" + txtDesc.Text + "',prod_price=" + txtPrice.Text + ",prod_status='" + status + "',stock='" + stock + "' where prod_id=" + id + "";
            int res= con.fun_ExecuteNonQuery(up_query);
            if (res != 0)
            {
                Response.Write("<script>alert('product updated');</script>");
            }
            GridView1.EditIndex = -1;
            Data_GridBind();

        }
    }
}