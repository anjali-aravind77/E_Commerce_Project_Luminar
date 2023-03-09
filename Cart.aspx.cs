using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project_1
{
    public partial class Cart : System.Web.UI.Page
    {
        ConnectionClass con = new ConnectionClass();
        int regid = 0;
        string delstatus = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            regid = int.Parse(Session["id"].ToString());
            if (!IsPostBack)
            {
                grid_Bind();

            }

        }

        public void grid_Bind()
        {
            
            string query = "select cart.cart_id, cart.prod_id, cart.reg_id, cart.quantity, cart.price, product.prod_id, product.prod_name, product.prod_price from cart inner join product on cart.prod_id=product.prod_id where cart.reg_id=" + regid + "";
            DataSet ds = con.fun_ExecuteDataAdapter(query);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            Label2.Text = grandTotal(regid).ToString();
        }
        public float grandTotal(int registerid)
        {
            string totalquery = "select sum(price) from cart where reg_id=" + registerid + "";
            float grandsum = float.Parse(con.fun_ExecuteScalar(totalquery));
            return grandsum;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_Bind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int cartid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            int prodid = Convert.ToInt32(GridView1.DataKeys[i].Values[1]);
            string perpiece_query = "select prod_price from product where prod_id=" + prodid + "";
            float priceofprod = float.Parse(con.fun_ExecuteScalar(perpiece_query));

            TextBox txtQuantity = (TextBox)GridView1.Rows[i].Cells[0].FindControl("TextBox1");

            //string price_query = "select price from cart where cart_id=" + cartid + "";
            //float price = float.Parse(con.fun_ExecuteScalar(price_query));
            float totalprice = int.Parse(txtQuantity.Text) * priceofprod;
            string update_query = "update cart set quantity=" + txtQuantity.Text + ", price=" + totalprice + " where cart_id=" + cartid + "";
            int res = con.fun_ExecuteNonQuery(update_query);
            if (res != 0)
            {
                Response.Write("<script>alert('quantity updated');</script>");

            }
            GridView1.EditIndex = -1;
            grid_Bind();
            // Label2.Text = grandTotal().ToString();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int cartid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string query = "delete from cart where cart_id=" + cartid + "";
            con.fun_ExecuteNonQuery(query);
            grid_Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_Bind();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            string pid = "", rid = "", quantitys = "", prices = "", del_status = "ordered";
            string max_cartidquery = "select max(cart_id) from cart where reg_id=" + regid + "";
            int max_cartid = Convert.ToInt32(con.fun_ExecuteScalar(max_cartidquery));
            for (int i = 1; i <= max_cartid; i++)
            {
                string sel_query = "select * from cart where cart_id=" + i + " and reg_id=" + regid + "";
                SqlDataReader dr = con.fun_ExecuteReader(sel_query);
                if (dr.Read())
                {
                    pid = dr["prod_id"].ToString();
                    rid = dr["reg_id"].ToString();
                    quantitys = dr["quantity"].ToString();
                    prices = dr["price"].ToString();
                }
                string insert_order = "insert into ordertab values(" + pid + "," + rid + "," + quantitys + "," + prices + ")";
                con.fun_ExecuteNonQuery(insert_order);
                string insert_bill = "insert into bill values(" + rid + "," + prices + ",'" + DateTime.Now.ToShortDateString() + "','" + del_status + "')";
                con.fun_ExecuteNonQuery(insert_bill);
                string del_cart = "delete from cart where cart_id = " + i + "";
                con.fun_ExecuteNonQuery(del_cart);
            }

        }
    }
}