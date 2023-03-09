using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class AddProducts : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string query = "select category_id, cat_name from category";
                DataSet ds = new DataSet();
                ds = con.fun_ExecuteDataAdapter(query);
                ddCategoryList.DataSource = ds;
                ddCategoryList.DataTextField = "cat_name";
                ddCategoryList.DataValueField = "category_id";
                ddCategoryList.DataBind();
                ddCategoryList.Items.Insert(0, "select a category");
                ddStock.Items.Insert(0, "select stock status");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int catid = Convert.ToInt32(ddCategoryList.SelectedItem.Value);
            string path = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string stockitem = ddStock.SelectedItem.Value;
            string insert_query = "insert into product values(" + catid + ",'" + txtName.Text + "','" + path + "','" + txtDesc.Text + "'," + txtPrice.Text + ",'" + txtStatus.Text + "','" + stockitem + "')";
            int res = con.fun_ExecuteNonQuery(insert_query);
            if (res == 0)
            {
                Response.Write("<script>alert('invalid entries. record cannot added');</script>");
                
               // Label1.Text = "Kindly cross check the data";

            }
            else
            {
                Label1.Text = "record added succesfully";
                txtName.Text = "";
                txtDesc.Text = "";
                txtPrice.Text = "";
                txtStatus.Text = "";
              //  txtStock.Text = "";
            }
        }
    }
}