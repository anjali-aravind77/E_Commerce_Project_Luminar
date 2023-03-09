using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
        }
        protected void btnAddCategory0_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategories.aspx");
        }

        protected void btnAddProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProducts.aspx");
        }

        protected void btnManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUsers.aspx");
        }

        protected void btnAddCategory1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }
    }
}