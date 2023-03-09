using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string path = "~/images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
                string query = "insert into category values('" + txtName.Text + "','" + path + "','" + txtDesc.Text + "','" + txtStatus.Text + "')";
                int res = con.fun_ExecuteNonQuery(query);
                if (res != 0)
                {
                    Label1.Text = "category added succesfully";
                    txtName.Text = "";
                    txtDesc.Text = "";
                    txtStatus.Text = "";
                }
                else
                {
                    Label1.Text = "error occured. please try again with valid data";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }

        }
    }
}