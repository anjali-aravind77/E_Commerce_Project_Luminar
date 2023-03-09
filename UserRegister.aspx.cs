using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class UserRegister : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string userquery = "select count(reg_id) from login where username='" + txtUsername.Text + "' and password = '" + txtPassword.Text + "'";
            int res = Convert.ToInt32(con.fun_ExecuteScalar(userquery));
            if (res != 0)
            {
                Label1.Text = "You have already registered. Please login.";
            }
            else
            {
                int reg_id = 0;
                string select_query = "select max(reg_id) from login";
                string res1 = con.fun_ExecuteScalar(select_query);

                if (res1 == "")
                {
                    reg_id = 1;
                }
                else
                {
                    int regid = Convert.ToInt32(res1);
                    reg_id = regid + 1;
                }
                string query = "insert into user_register values(" + reg_id + ",'" + txtName.Text + "','" + txtPhonenum.Text + "','" + txtEmail.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                int i = con.fun_ExecuteNonQuery(query);
                if (i == 0)
                {
                    Label1.Text = "something is wrong";
                }
                else
                {
                    string log_query = "insert into login values(" + reg_id + ",'" + txtUsername.Text + "','" + txtPassword.Text + "','user','active')";
                    int log_res = Convert.ToInt32(con.fun_ExecuteNonQuery(log_query));
                    if (log_res != 0)
                        Response.Redirect("Login.aspx");
                    else
                        Label1.Text = "something is wrong";
                }

            }
        }
    }
}