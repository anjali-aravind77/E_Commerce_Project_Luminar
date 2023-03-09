using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Grid_Bind();
        }
        public void Grid_Bind()
        {
            string query = "select user_register.reg_id,name,phonenum,email,login.username,status from user_register inner join login on user_register.reg_id=login.reg_id";
            DataSet ds = con.fun_ExecuteDataAdapter(query);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string block_query = "update login set status='Inactive' where reg_id=" + id + "";
            con.fun_ExecuteNonQuery(block_query);
            Response.Write("<script>alert('User is blocked.');</script>");
            Grid_Bind();
           
        }
    }
}