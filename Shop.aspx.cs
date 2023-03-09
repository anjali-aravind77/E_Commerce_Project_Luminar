using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class Shop : System.Web.UI.Page
    {
        int categoryid = 0;
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                categoryid = Convert.ToInt32(Session["category_id"]);
                string query = "select * from product where category_id=" + categoryid + "";
                DataSet ds = con.fun_ExecuteDataAdapter(query);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int prod_id = Convert.ToInt32(e.CommandArgument);
            Session["prodid"] = prod_id;
            Response.Redirect("ProductDetails.aspx");
        }
    }
}