using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        int productid;
        int registerid;
        float priceperpiece;
        float totalprice;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                txtCounter.Text = "1";
                productid = Convert.ToInt32(Session["prodid"]);
                registerid = Convert.ToInt32(Session["id"]);
                string query = "select * from product where  prod_id=" + productid + "";
                SqlDataReader dr = con.fun_ExecuteReader(query);
                if (dr.Read())
                {
                    Image1.ImageUrl = dr["prod_image"].ToString();
                    Label1.Text = dr["prod_name"].ToString();
                    Label2.Text = dr["prod_desc"].ToString();
                    Session["price"] = dr["prod_price"].ToString();
                    Label3.Text = dr["prod_price"].ToString();
                }
               
            }           

        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            int cartid = 1;
            string cart_query = "select max(cart_id) from cart";
            string cart_id_prev = con.fun_ExecuteScalar(cart_query).ToString();
            if(cart_id_prev != "")
            {
                cartid = int.Parse(cart_id_prev) + 1;
            }
            productid = Convert.ToInt32(Session["prodid"]);
            registerid = Convert.ToInt32(Session["id"]);
            priceperpiece = float.Parse(Session["price"].ToString());
                int prodCount = Convert.ToInt32(txtCounter.Text.ToString());
                totalprice = prodCount * priceperpiece;
            string car_query = "insert into cart values(" + cartid + "," + productid + "," + registerid + "," + prodCount + "," + totalprice + ")";
                int res = con.fun_ExecuteNonQuery(car_query);

            if(res != 0)
            {
               
            }
               
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btnPlus_Click(object sender, EventArgs e)
        {
            btnMinus.Enabled = true;
            txtCounter.Text = (int.Parse(txtCounter.Text) + 1).ToString();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            btnMinus.Enabled = true;
            if (int.Parse(txtCounter.Text) > 0)
            {
                
                txtCounter.Text = (int.Parse(txtCounter.Text) - 1).ToString();
            }
            else
            {
                btnMinus.Enabled = false;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}