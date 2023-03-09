using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class Products : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select * from category";
                DataSet ds = con.fun_ExecuteDataAdapter(query);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["category_id"] = e.CommandArgument;
            Response.Redirect("Shop.aspx");
          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}