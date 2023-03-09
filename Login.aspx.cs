using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string log_query = "select count(reg_id) from login where username= '" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
            string res = con.fun_ExecuteScalar(log_query);
            if (res == "")
            {
                Label1.Text = "unsuccesful attempt";
            }
            int id = Convert.ToInt32(res);
            string login_type = "";
            if (id == 1)
            {
                string query = "select reg_id,log_type,status from login where username= '" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
                SqlDataReader dr = con.fun_ExecuteReader(query);
                while (dr.Read())
                {
                    if (dr["status"].ToString() == "Inactive")
                    {
                        Response.Write("<script>alert('Your account is blocked. Kindly contact our customer care for any further assistance.');</script>");
                        break;
                    }
                    Session["id"] = dr["reg_id"];
                    login_type = dr["log_type"].ToString();
                }
                if (login_type == "admin")
                {
                    Response.Redirect("AdminPage.aspx");
                }
                else if (login_type == "user")
                {
                    Response.Redirect("Products.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect username or password');</script>");
            }

        }
    }
}