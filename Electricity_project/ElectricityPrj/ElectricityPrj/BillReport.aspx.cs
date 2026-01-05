using ElectricityPrj.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectricityPrj
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DBHandler db = new DBHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            SqlConnection con = db.GetConnection();
            SqlCommand cmd;
            if (rblType.SelectedValue == "M")
            {
                 cmd = new SqlCommand("select * from ElectricityBill where consumer_number=@num and bill_month=@m and bill_year=@y", con);
                cmd.Parameters.AddWithValue("@num", txtConsumerNo.Text);
                cmd.Parameters.AddWithValue("@m", int.Parse(txtMonth.Text));
                cmd.Parameters.AddWithValue("@y", int.Parse(txtYear.Text));
            }
            else
            {
               cmd = new SqlCommand("select * from ElectricityBill where consumer_number=@num and bill_year=@y", con);
                cmd.Parameters.AddWithValue("@num", txtConsumerNo.Text);
                cmd.Parameters.AddWithValue("@y", int.Parse(txtYear.Text));
            }
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                lblMsg.Text = "No records found";
            }
            else
            {
                lblMsg.Text = "";
            }

            gvReport.DataSource = dt;
            gvReport.DataBind();
        }
    }
    }
